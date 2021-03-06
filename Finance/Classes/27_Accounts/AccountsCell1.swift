//
// Copyright (c) 2020 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

//-------------------------------------------------------------------------------------------------------------------------------------------------
class AccountsCell1: UITableViewCell {

	@IBOutlet var imageViewCard: UIImageView!
	@IBOutlet var labelCardName: UILabel!
	@IBOutlet var labelCardNumber: UILabel!
	@IBOutlet var labelAmount: UILabel!

	//---------------------------------------------------------------------------------------------------------------------------------------------
	func bindData(index: IndexPath, data: [String: String]) {

		guard let name = data["name"] else { return }
		guard let card_number = data["card_number"] else { return }
		guard let card_type = data["card_type"] else { return }
		guard let amount = data["amount"] else { return }

		imageViewCard.sample("Finance", "Payments", index.row)
		labelCardName.text = name
		labelCardNumber.text = card_type.uppercased() + " " + card_number
		labelAmount.text = amount
	}
}

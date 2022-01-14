//
//  PoliciesView.swift
//  HandyMan
//
//  Created by Bowei Li on 1/10/22.
//

import SwiftUI

struct PoliciesView: View {
    var body: some View {
        ScrollView {
            Group {
                VStack(alignment: .leading){
                    Text(
                    "本政策仅适用于{公司名}的{产品名}产品或服务。 最近更新日期：{隐私政策更新时间} 本政策将帮助您了解以下内容:"
                    )
                    Text("一、我们如何收集和使用您的用户信息")
                    Text("二、我们如何使用 Cookie 和同类技术")
                    Text("三、我们如何共享、转让、公开披露您的用户信息")
                    Text("四、我们如何保护您的用户信息")
                    Text("五、您的权利")
                    Text("六、我们如何处理儿童的个人信息")
                    Text("七、您的用户信息如何储存及如何在全球范围转移")
                    Text("八、本政策如何更新")
                    Text("九、如何联系我们")
                }
            }
            Group {
                VStack(alignment: .leading) {
                    Text(
                    "我们深知用户信息对您的重要性，并会尽全力保护您的用户信息安全可靠。我们致力于维持您对我们的信任，恪守以下原则，保护您的用户信息：权责一致原则、目的明确原则、选择同意原则、最少够用原则、确保安全原则、主体参与原则、公开透明原则等。同时，我们承诺，我们将按业界成熟的安全标准，采取相应的安全保护措施来保护您的用户信息。"
                    )
                    Text("请在使用我们的产品（或服务）前，仔细阅读并了解本隐私政策。")
                    Text("一、我们如何收集和使用您的用户信息")
                    Text("  (一）您使用我司产品或服务过程中我们收集和使用的信息")
                    Text(
                    "   我们仅会出于本政策所述的业务功能，收集和使用您的用户信息，收集用户信息的目的在于向您提供产品或服务，您有权自行选择是否提供该信息，但多数情况下，如果您不提供，我们可能无法向您提供相应的服务，也无法回应您遇到的问题："
                    )
                    Text(
                    "   在您使用我们的服务时，允许我们收集您自行向我们提供的或为向您提供服务所必要的信息包括：网络身份识别信息（头像、用户名及登录密码）、电子邮箱、手机号码、位置信息、设备信息、服务日志信息、订单支付相关信息、订单安全相关设备信息、订单相关配送信息等。"
                    )
                    Text(
                    "   对于我们收集的用户信息，我们将用你为您创建账号、提供商品或服务信息展示、提供收藏、加购与分享功能、帮助您完成下单及订单管理、帮助您完成支付、向您完成商品或服务的交付等。")
                    Text("  您提供的上述信息，将在您使用本服务期间持续授权我们使用。在您停止使用推送服务时，我们将停止使用并删除上述信息。")
                    Text("  我们保证会依法对收集后的用户信息进行去标识化或匿名化处理，对于无法单独或者与其他信息结合识别自然人个人身份的信息，不属于法律意义上的个人信息。如果我们将非个人信息与其他信息结合识别到您的个人身份时，或者与您的个人信息结合使用时，我们会在结合使用期间，将此类信息作为您的个人信息按照本隐私政策对其进行处理和保护。")
                    Text("  为了更好运营和改善我们的技术和服务，或出于商业策略的变化，当我们提供的产品或服务所需的用户信息收集、使用、处理超出上述范围或者要将收集到的用户信息用于本隐私政策未载明的其他用途，或当我们要将基于特定目的收集而来的信息用于其他目的时，我们会在获取用户信息后的合理期限内或处理用户信息前通知您，并获得您的授权同意。")
                    
                }
                Group{
                    VStack(alignment: .leading){
                        Text("(二）征得授权同意的例外")
                        Text("请您理解，根据法律法规及相关国家标准，以下情形中，我们收集和使用您的用户信息无需征得您的授权同意： ")
                        Text("1、与国家安全、国防安全直接相关的")
                        Text("2、与公共安全、公共卫生、重大公共利益直接相关的")
                        Text("3、与犯罪侦查、起诉、审判和判决执行等直接相关的")
                        Text("4、出于维护您或其他个人的生命、财产等重大合法权益但又很难得到本人同意的")
                        Text("5、所收集的您的用户信息是您自行向社会公众公开的")
                        Text("6、从合法公开披露的信息中收集的您的用户信息，如合法的新闻报道、政府信息公开等渠道")
                        Text("7、根据您的要求签订或履行合同所必需的")
                        Text("8、用于维护软件及相关服务的安全稳定运行所必需的，例如发现、处置软件及相关服务的故障")
                    }
                }
                Group{
                    VStack(alignment: .leading){
                        Text("9、 个人信息控制者为新闻单位且其在开展合法的新闻报道所必需的")
                        Text("10、学术研究机构基于公共利益开展统计或学术研究所必要，且对外提供学术研究或描述的结果时，对结果中所包含的个人信息进行去标识化处理的")
                        Text("11、法律法规规定的其他情形")
                    }
                }
                
            
                
                
            }
            
            
        }.padding()
    }
}

struct PoliciesView_Previews: PreviewProvider {
    static var previews: some View {
        PoliciesView()
    }
}

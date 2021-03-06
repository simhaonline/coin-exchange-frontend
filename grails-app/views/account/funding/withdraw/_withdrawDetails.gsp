<!--
***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Coin Exchange is a high performance exchange system specialized for
* Crypto currency trading. It has different general purpose uses such as
* independent deposit and withdrawal channels for Bitcoin and Litecoin,
* but can also act as a standalone exchange that can be used with
* different asset classes.
* Coin Exchange uses state of the art technologies such as ASP.NET REST API,
* AngularJS and NUnit. It also uses design patterns for complex event
* processing and handling of thousands of transactions per second, such as
* Domain Driven Designing, Disruptor Pattern and CQRS With Event Sourcing.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************
-->


<div class="hidden2" style="display: block;" ng-controller="withdrawDetailsController">
    <div class="center vpad10" ng-show="getErrors()">
        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>
<div class="pull-right span4 hmarg20left vmarg20top">
    <div class="alert alert-info alert-even funding-info">
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">Daily limit</td>
                <td class="dots"></td>
                <td ng-bind-template="{{withdrawLimits.DailyLimitUsed}} / {{withdrawLimits.DailyLimit}}"></td>
            </tr>
            <tr>
                <td colspan="3" class="control-hint ralign"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots vmarg0bot">
            <tbody><tr>
                <td class="k">Monthly limit</td>
                <td class="dots"></td>
                <td ng-bind-template="{{withdrawLimits.MonthlyLimitUsed}} / {{withdrawLimits.MonthlyLimit}}"></td>
            </tr>
            <tr>
                <td colspan="3" class="control-hint ralign"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">Available balance</td>
                <td class="dots"></td>
                <td ng-bind="withdrawLimits.CurrentBalance"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">Withheld</td>
                <td class="dots"></td>
                <td ng-bind="withdrawLimits.Withheld"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">Withheld (converted)</td>
                <td class="dots"></td>
                <td ng-bind="withdrawLimits.WithheldInUsd"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots vmarg0bot">
            <tbody><tr>
                <td class="k"><strong>Maximum Withdraw</strong></td>
                <td class="dots"></td>
                <td ng-bind="withdrawLimits.MaximumWithdraw"><strong></strong></td>
            </tr>
            <tr>
                <td colspan="3" class="control-hint ralign"></td>
            </tr>
            </tbody></table>
    </div>
    <div class="center vmarg10">
        <a class="center" href="/u/verify"><small>Increase funding limits</small></a>
    </div>
</div>
<div class="title-wrap">
    <h5 class="title">Withdrawal</h5>
    <p>To add an address for withdrawals, click "Add address" below and fill in the address you'd like to withdraw to. After you've added the address, simply select it and enter the amount you wish to withdraw. </p> <ul> <li> We strongly recommend that you copy + paste the address to help avoid errors. Please note that we are not responsible for coins mistakenly sent to the wrong address.</li> <li>Don't exceed your daily or monthly funding limits. If you exceed the limits, your account will be frozen until you can get verified for higher limits.</li> </ul></div>
<div class="clearfix"></div>
<div class="slider vpad40top">
<div class="transfer" style="width: 4728px;">
    <div id="withdraw-form-content" class="span10" data-locked="0" ng-show="withdrawForm">
        <g:render template="/account/funding/withdraw/withdrawForm"/>
    </div>

    <div id="withdraw-confirm-content" class="span10" data-locked="0" ng-show="reviewWithdraw">
        <g:render template="/account/funding/withdraw/confirmWithdraw"/>
    </div>

    <div id="withdraw-successful-content" class="span10" data-locked="0" ng-show="withdrawSuccessful">
        <g:render template="/account/funding/withdraw/withdrawSuccessful"/>
    </div>

    <div id="add-address-content" class="span10" data-locked="0" ng-show="showAddAddress">
        <g:render template="/account/funding/withdraw/addAddressMain"/>
    </div>

    <div id="add-address-successful-content" class="span10" data-locked="0" ng-show="showAddAddressSuccessful">
        <g:render template="/account/funding/withdraw/addAddressSuccessful"/>
    </div>

    <div id="manage-address-main-content" class="span10" data-locked="0" ng-show="showManageAddressesMain">
        <g:render template="/account/funding/withdraw/manageAddressesMain"/>
    </div>

    <div id="confirm-address-delete-content" class="span10" data-locked="0" ng-show="showConfirmAddressDelete">
        <g:render template="/account/funding/withdraw/confirmAddressDeletion"/>
    </div>

    <div id="address-delete-successful-content" class="span10" data-locked="0" ng-show="showDeleteSuccessful">
        <g:render template="/account/funding/withdraw/deleteSuccessful"/>
    </div>

</div>
</div>
</div>
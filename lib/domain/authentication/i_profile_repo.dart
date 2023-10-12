import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:grandizar_customer_v2/domain/authentication/contact_address.dart';
import 'package:grandizar_customer_v2/domain/authentication/contact_address_for_edit.dart';

abstract class IProfileRepo {
  Future<ContactAddressForEdit> getContactAddressForEdit({required int id});
  Future<void> deleteAddress(int id);
  Future<IList<ContactAddress>> getAllContactAddresses(
      {required int contactId});
  Future<void> createContactAddress({required ContactAddress contactAddress});
}

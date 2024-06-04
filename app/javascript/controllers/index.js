import { application } from "controllers/application";
import Popover from "@stimulus-components/popover";
import Dropdown from '@stimulus-components/dropdown';
import CharacterCounter from '@stimulus-components/character-counter'
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";

application.register('popover', Popover);
application.register('dropdown', Dropdown);
application.register('character-counter', CharacterCounter)
eagerLoadControllersFrom("controllers", application);
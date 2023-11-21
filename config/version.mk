#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ANDROID_VERSION := 14
CUSTOMVERSION := X1.1
CUSTOM_MOD_VERSION := Zenith

CUSTOM_BUILD_TYPE ?= UNOFFICIAL
CUSTOM_MAINTAINER ?= UNKNOWN
CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY)
TARGET_PRODUCT_SHORT := $(subst CUSTOM_,,$(CUSTOM_BUILD))
CUSTOM_VERSION := HorizonDroid-$(CUSTOMVERSION)-$(CUSTOM_MOD_VERSION)-$(CUSTOM_BUILD)-$(CUSTOM_BUILD_TYPE)-$(CUSTOM_BUILD_DATE)
CUSTOM_MOD_VERSION :=$(ANDROID_VERSION)-$(CUSTOMVERSION)
CUSTOM_DISPLAY_BUILDTYPE := $(CUSTOM_BUILD_TYPE)
CUSTOM_FINGERPRINT := HorizonDroid/$(CUSTOM_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(CUSTOM_BUILD_DATE)

# CUSTOM System Version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.custom.version=$(CUSTOM_DISPLAY_VERSION) \
  ro.custom.build.status=$(CUSTOM_BUILD_TYPE) \
  ro.modversion=$(CUSTOM_MOD_VERSION) \
  ro.custom.build.date=$(CUSTOM_BUILD_DATE) \
  ro.custom.buildtype=$(CUSTOM_BUILD_TYPE) \
  ro.custom.fingerprint=$(CUSTOM_FINGERPRINT) \
  ro.custom.device=$(CUSTOM_BUILD) \


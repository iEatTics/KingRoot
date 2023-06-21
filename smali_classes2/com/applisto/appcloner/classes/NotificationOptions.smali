.class public Lcom/applisto/appcloner/classes/NotificationOptions;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "NotificationOptions.java"


# static fields
.field private static final ACTION_SNOOZE_NOTIFICATION:Ljava/lang/String; = "com.applisto.appcloner.action.SNOOZE_NOTIFICATION"

.field private static final EXTRA_SNOOZE_ACTION:Ljava/lang/String; = "snooze_action"

.field private static final TAG:Ljava/lang/String;

.field private static mAllowNotificationsWhenRunning:Z

.field private static mBlockAllNotifications:Z

.field private static mNotificationColor:Ljava/lang/Integer;


# instance fields
.field private mHeadsUpNotifications:Z

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mLocalOnlyNotifications:Z

.field private mNoOngoingNotifications:Z

.field private mNotificationCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationFilterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationLightsColor:Ljava/lang/String;

.field private mNotificationLightsPattern:Ljava/lang/String;

.field private mNotificationPriority:Ljava/lang/String;

.field private mNotificationQuietTime:Z

.field private mNotificationQuietTimeEndHour:I

.field private mNotificationQuietTimeEndMinute:I

.field private mNotificationQuietTimeStartHour:I

.field private mNotificationQuietTimeStartMinute:I

.field private mNotificationSnoozeTimeout:I

.field private mNotificationSound:Ljava/lang/String;

.field private mNotificationTextReplacements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationTimeout:I

.field private mNotificationTintStatusBarIcon:Z

.field private mNotificationVibration:Ljava/lang/String;

.field private mNotificationVisibility:Ljava/lang/String;

.field private mRemoveNotificationActions:Z

.field private mRemoveNotificationIcon:Z

.field private mRemoveNotificationPeople:Z

.field private mReplaceNotificationIcon:Z

.field private mRunning:Z

.field private mShowNotificationTime:Z

.field private mSimpleNotifications:Z

.field private mSingleNotificationCategory:Ljava/lang/String;

.field private mSnoozeNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutHandler:Landroid/os/Handler;

.field private mTimeoutRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .locals 12

    const-string v0, ":"

    .line 98
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    const-string v1, "NO_CHANGE"

    .line 80
    iput-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    .line 93
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;

    const/4 v2, 0x0

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "blockAllNotifications"

    invoke-virtual {p1, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/applisto/appcloner/classes/NotificationOptions;->mBlockAllNotifications:Z

    const-string v5, "allowNotificationsWhenRunning"

    .line 101
    invoke-virtual {p1, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/applisto/appcloner/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z

    const/4 v5, 0x0

    const-string v6, "notificationFilter"

    .line 102
    invoke-virtual {p1, v6, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    .line 104
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 105
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 106
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 108
    iget-object v10, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "notificationQuietTime"

    .line 112
    invoke-virtual {p1, v6, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTime:Z

    const/4 v6, 0x1

    :try_start_0
    const-string v7, "notificationQuietTimeStart"

    const-string v8, "21:00"

    .line 114
    invoke-virtual {p1, v7, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 115
    aget-object v8, v7, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    .line 116
    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    const-string v7, "notificationQuietTimeEnd"

    const-string v8, "07:00"

    .line 117
    invoke-virtual {p1, v7, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    .line 119
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 121
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string v0, "notificationColorUseStatusBarColor"

    .line 123
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "statusBarColor"

    .line 124
    invoke-virtual {p1, v0, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    const-string v0, "notificationColor"

    .line 126
    invoke-virtual {p1, v0, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    :goto_2
    const-string v0, "notificationTintStatusBarIcon"

    .line 128
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    const-string v0, "notificationSound"

    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    const-string v0, "notificationVibration"

    .line 130
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    const-string v0, "notificationTimeout"

    .line 131
    invoke-virtual {p1, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    const-string v0, "notificationSnoozeTimeout"

    .line 132
    invoke-virtual {p1, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    const-string v0, "headsUpNotifications"

    .line 133
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mHeadsUpNotifications:Z

    const-string v0, "localOnlyNotifications"

    .line 134
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    const-string v0, "noOngoingNotifications"

    .line 135
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNoOngoingNotifications:Z

    const-string v0, "showNotificationTime"

    .line 136
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mShowNotificationTime:Z

    const-string v0, "defaultNotificationLights"

    .line 137
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "notificationLightsPattern"

    .line 139
    invoke-virtual {v0, v2, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    const-string v2, "notificationLightsColor"

    .line 140
    invoke-virtual {v0, v2, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    :cond_3
    const-string v0, "notificationVisibility"

    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    const-string v0, "notificationPriority"

    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    const-string v0, "replaceNotificationIcon"

    .line 144
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    const-string v0, "removeNotificationIcon"

    .line 145
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    const-string v0, "removeNotificationActions"

    .line 146
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationActions:Z

    const-string v0, "removeNotificationPeople"

    .line 147
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    const-string v0, "simpleNotifications"

    .line 148
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSimpleNotifications:Z

    const-string v0, "notificationCategories"

    .line 149
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ignoreCase"

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applisto/appcloner/classes/CloneSettings;

    .line 152
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v7, "name"

    .line 153
    invoke-virtual {v3, v7, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "keywords"

    .line 154
    invoke-virtual {v3, v7, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v3, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const-string v0, "singleNotificationCategory"

    .line 159
    invoke-virtual {p1, v0, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    const-string v0, "notificationTextReplacements"

    .line 160
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applisto/appcloner/classes/CloneSettings;

    .line 163
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "replace"

    .line 164
    invoke-virtual {v0, v4, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "with"

    .line 165
    invoke-virtual {v0, v4, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "replaceInTitle"

    invoke-virtual {v0, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "replaceInContent"

    invoke-virtual {v0, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "replaceInMessages"

    invoke-virtual {v0, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "replaceInActions"

    invoke-virtual {v0, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 175
    :cond_5
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mBlockAllNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/NotificationOptions;->mBlockAllNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mAllowNotificationsWhenRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationFilterSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTimeStartHour: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTimeStartMinute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTimeEndHour: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTimeEndMinute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationTintStatusBarIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationVibration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationSnoozeTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mHeadsUpNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mHeadsUpNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mLocalOnlyNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNoOngoingNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNoOngoingNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mShowNotificationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mShowNotificationTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationLightsPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationLightsColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mReplaceNotificationIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mRemoveNotificationIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mRemoveNotificationActions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationActions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mRemoveNotificationPeople: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mSimpleNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSimpleNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationCategories: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mSingleNotificationCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationTextReplacements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/NotificationOptions;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/NotificationOptions;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    .line 881
    :try_start_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 884
    :catchall_0
    :try_start_1
    const-class v0, Landroid/app/Notification;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 885
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 886
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 888
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 892
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    return-object p0
.end method

.method private getNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 900
    invoke-direct {p0, p2}, Lcom/applisto/appcloner/classes/NotificationOptions;->getNotificationChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 905
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_cloner_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationChannelId; channelId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", channelName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string p2, "notification"

    .line 910
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 911
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v0
.end method

.method private getNotificationChannelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 918
    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotificationChannelName; returning mSingleNotificationCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    return-object p1

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "name"

    .line 925
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 926
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "keywords"

    .line 928
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 929
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ignoreCase"

    .line 931
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 932
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, p1

    .line 934
    :goto_0
    sget-object v5, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNotificationChannelName; name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", keywords: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", ignoreCase: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", matchText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ","

    .line 937
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 938
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_3

    .line 940
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 942
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 943
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotificationChannelName; found keyword; keyword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private isAppClonerClassesNotification()Z
    .locals 7

    .line 861
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 862
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 863
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.app.NotificationManager"

    .line 864
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    const-string v0, "com.applisto.appcloner.classes."

    .line 867
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method static synthetic lambda$null$0(ILandroid/content/Context;)V
    .locals 3

    .line 446
    :try_start_0
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run; cancelling notification; id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    .line 448
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 449
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 451
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static replace(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 3

    .line 1269
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 1273
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 1275
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    :goto_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    return-object p0

    .line 1281
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p3

    const/16 v2, 0x21

    invoke-virtual {v0, p1, p3, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1284
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    .line 1285
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-eq p0, v1, :cond_2

    .line 1287
    invoke-virtual {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    return-object v0
.end method

.method private replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p7

    move/from16 v8, p8

    .line 961
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceNotificationText; replace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ignoreCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInContent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInActions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {v10, v1, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 972
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_29

    .line 974
    invoke-static/range {p1 .. p1}, Lcom/applisto/appcloner/classes/NotificationOptions;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v7

    const/16 v1, 0x18

    if-eqz v14, :cond_7

    const-string v2, "android.title"

    .line 980
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 981
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "android.title.big"

    if-nez v3, :cond_1

    .line 982
    invoke-direct {v10, v2, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 983
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.title"

    .line 984
    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 991
    :cond_1
    :goto_0
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 992
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 993
    invoke-direct {v10, v2, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 994
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 995
    invoke-virtual {v7, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 997
    :cond_2
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1001
    :cond_3
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_7

    const-string v2, "android.conversationTitle"

    .line 1004
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1005
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1006
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1007
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1008
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1010
    :cond_4
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    :goto_2
    const-string v2, "android.hiddenConversationTitle"

    .line 1015
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1016
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1017
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1018
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1019
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1021
    :cond_6
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    :goto_3
    if-eqz v15, :cond_13

    const-string v2, "android.text"

    .line 1030
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1031
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1032
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1033
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1034
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1036
    :cond_8
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_9
    :goto_4
    const-string v2, "android.subText"

    .line 1041
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1042
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1043
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1044
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1045
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1047
    :cond_a
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_b
    :goto_5
    const-string v2, "android.infoText"

    .line 1052
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1053
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1054
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1055
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1056
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1058
    :cond_c
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_d
    :goto_6
    const-string v2, "android.summaryText"

    .line 1063
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1064
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1065
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1066
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1067
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1069
    :cond_e
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1074
    :cond_f
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11

    const-string v2, "android.bigText"

    .line 1075
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1076
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1077
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1078
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1079
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1081
    :cond_10
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1087
    :cond_11
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_13

    const-string v2, "android.selfDisplayName"

    .line 1088
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1089
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1090
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1091
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1092
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1094
    :cond_12
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_13
    :goto_9
    const-string v6, "text"

    if-eqz v9, :cond_1f

    const-string v2, "android.textLines"

    .line 1103
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    array-length v1, v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v1, :cond_16

    move/from16 v18, v1

    aget-object v1, v3, v5

    .line 1107
    invoke-direct {v10, v1, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1108
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_15

    .line 1109
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 1110
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_14
    move-object/from16 v1, v19

    .line 1112
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v18

    goto :goto_a

    .line 1115
    :cond_16
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 1116
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1118
    :cond_17
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1123
    :cond_18
    :goto_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1f

    const-string v1, "android.messages"

    .line 1124
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    array-length v4, v2

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_1d

    aget-object v16, v2, v5

    move-object/from16 v18, v2

    .line 1128
    move-object/from16 v2, v16

    check-cast v2, Landroid/os/Bundle;

    move/from16 v16, v4

    const-string v4, "sender"

    .line 1131
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_19

    .line 1133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v10, v4, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "sender"

    .line 1134
    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_19
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1139
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 1140
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v10, v9, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1141
    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :cond_1a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1145
    :cond_1b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p7

    move/from16 v4, v16

    move-object/from16 v2, v18

    goto :goto_c

    .line 1148
    :cond_1d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    new-array v4, v2, [Landroid/os/Parcelable;

    .line 1149
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_d

    .line 1151
    :cond_1e
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1f
    :goto_d
    if-eqz v8, :cond_23

    .line 1159
    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_23

    .line 1160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    iget-object v2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_21

    aget-object v5, v2, v4

    .line 1162
    iget-object v9, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v10, v9, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1163
    iget-object v9, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 1164
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1167
    :cond_21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v5, 0x0

    new-array v2, v5, [Landroid/app/Notification$Action;

    .line 1168
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_f

    :cond_22
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1170
    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_f

    :cond_23
    const/4 v5, 0x0

    :goto_f
    :try_start_0
    const-string v0, "android.wearable.EXTENSIONS"

    .line 1177
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_26

    if-eqz v8, :cond_25

    const-string v1, "actions"

    .line 1180
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1182
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    .line 1184
    iget-object v3, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1185
    iget-object v2, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1186
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_25
    const-string v1, "pages"

    .line 1191
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v14

    if-eqz v14, :cond_26

    .line 1193
    array-length v15, v14

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v15, :cond_26

    aget-object v0, v14, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1195
    :try_start_1
    move-object v2, v0

    check-cast v2, Landroid/app/Notification;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/16 v16, 0x0

    move/from16 v5, p4

    move-object/from16 p1, v14

    move-object v14, v6

    move/from16 v6, p5

    move/from16 v17, v15

    move-object v15, v7

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v18, v9

    move/from16 v9, p8

    .line 1196
    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    move/from16 v18, v9

    move-object/from16 p1, v14

    move/from16 v17, v15

    const/16 v16, 0x0

    move-object v14, v6

    move-object v15, v7

    .line 1199
    :goto_12
    :try_start_3
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_13
    add-int/lit8 v9, v18, 0x1

    move/from16 v8, p8

    move-object v6, v14

    move-object v7, v15

    move/from16 v15, v17

    const/4 v5, 0x0

    move-object/from16 v14, p1

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_14

    :cond_26
    move-object v14, v6

    move-object v15, v7

    const/16 v16, 0x0

    goto :goto_15

    :catch_3
    move-exception v0

    move-object v14, v6

    move-object v15, v7

    const/16 v16, 0x0

    .line 1205
    :goto_14
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    :try_start_4
    const-string v0, "android.car.EXTENSIONS"

    .line 1210
    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_29

    if-eqz p7, :cond_29

    const-string v1, "car_conversation"

    .line 1213
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v1, "messages"

    .line 1215
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1217
    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 1218
    check-cast v3, Landroid/os/Bundle;

    const-string v4, "author"

    .line 1219
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1220
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_27

    const-string v5, "author"

    .line 1221
    invoke-direct {v10, v4, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1223
    :cond_27
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1224
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 1225
    invoke-direct {v10, v4, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :catch_4
    move-exception v0

    .line 1233
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 3

    .line 1240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1244
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p3

    .line 1252
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/applisto/appcloner/classes/NotificationOptions;->replace(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1253
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1260
    sget-object p3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object p1
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .locals 8

    .line 208
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/applisto/appcloner/classes/NotificationOptions;->mBlockAllNotifications:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    .line 212
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTime:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    const-string v1, "NO_CHANGE"

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mHeadsUpNotifications:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNoOngoingNotifications:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mShowNotificationTime:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationActions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSimpleNotifications:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    .line 231
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    .line 233
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/NotificationOptions;->onCreate()Z

    .line 239
    :try_start_0
    const-class v0, Landroid/app/NotificationManager;

    const-string v1, "sService"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 243
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v4, "onCreate; sService already initialized!!!"

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_1
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v4, "onCreate; sService == null"

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    const-class v3, Landroid/app/NotificationManager;

    const-string v4, "getService"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "android.app.INotificationManager"

    .line 252
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 254
    const-class v6, Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v5

    new-instance v4, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;

    invoke-direct {v4, p0, p1, v3}, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;-><init>(Lcom/applisto/appcloner/classes/NotificationOptions;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {v6, v7, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 782
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 784
    iget v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    if-lez v0, :cond_2

    .line 785
    new-instance v0, Lcom/applisto/appcloner/classes/NotificationOptions$1;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/NotificationOptions$1;-><init>(Lcom/applisto/appcloner/classes/NotificationOptions;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.applisto.appcloner.action.SNOOZE_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 823
    :cond_2
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 825
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, ".notificationIconFile"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object p1

    .line 827
    array-length v0, p1

    invoke-static {p1, v5, v0}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    .line 828
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install; mIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 830
    :try_start_2
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 835
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$install$1$NotificationOptions(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    const-string v2, "NO_CHANGE"

    const-string v3, ""

    .line 257
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "enqueueNotificationWithTag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_44

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/applisto/appcloner/classes/NotificationOptions;->isAppClonerClassesNotification()Z

    move-result v4

    if-nez v4, :cond_44

    .line 260
    :try_start_0
    sget-object v4, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke; method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const/4 v4, 0x3

    const/4 v7, 0x2

    .line 263
    :try_start_1
    aget-object v8, v13, v4

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 265
    :catch_0
    :try_start_2
    aget-object v8, v13, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_0
    const v9, 0x60a40a2e

    if-eq v8, v9, :cond_48

    const v9, 0x4530f1

    if-eq v8, v9, :cond_48

    .line 270
    sget-boolean v9, Lcom/applisto/appcloner/classes/NotificationOptions;->mBlockAllNotifications:Z

    .line 271
    sget-boolean v14, Lcom/applisto/appcloner/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z

    if-eqz v14, :cond_0

    iget-boolean v14, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mRunning:Z

    if-eqz v14, :cond_0

    const/4 v9, 0x0

    :cond_0
    if-eqz v9, :cond_1

    .line 276
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v2, "invoke; blocked notification"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    return-object v5

    :cond_1
    const/4 v9, 0x4

    .line 282
    :try_start_3
    aget-object v9, v13, v9

    check-cast v9, Landroid/app/Notification;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :goto_1
    move-object v14, v9

    goto :goto_2

    .line 284
    :catch_1
    :try_start_4
    aget-object v9, v13, v4

    check-cast v9, Landroid/app/Notification;

    goto :goto_1

    .line 287
    :goto_2
    sget-object v9, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    if-eqz v9, :cond_2

    .line 289
    :try_start_5
    sget-object v9, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v14, Landroid/app/Notification;->color:I

    .line 290
    sget-object v9, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke; set notification color; notificationColor: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 296
    :catch_2
    :cond_2
    :try_start_6
    invoke-static {v14}, Lcom/applisto/appcloner/classes/NotificationOptions;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    .line 297
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invoke; extras: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.title"

    .line 300
    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    .line 301
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v15, "android.title.big"

    .line 302
    invoke-virtual {v4, v15, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v15, "android.text"

    .line 304
    invoke-virtual {v4, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 306
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v15, "android.bigText"

    .line 309
    invoke-virtual {v4, v15, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v15, "android.infoText"

    .line 311
    invoke-virtual {v4, v15, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    iget-object v3, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, "android.textLines"

    .line 314
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 316
    array-length v15, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v15, :cond_4

    aget-object v5, v3, v6

    .line 317
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_3

    .line 322
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    sget-object v5, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke; concatenatedText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v5, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 326
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 327
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 328
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 329
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke; blocked notification; notificationFilterString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    .line 336
    :cond_6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_7

    .line 338
    :try_start_7
    invoke-direct {v10, v1, v3}, Lcom/applisto/appcloner/classes/NotificationOptions;->getNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    sget-object v5, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke; channelId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 341
    const-class v5, Landroid/app/Notification;

    const-string v6, "mChannelId"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    .line 342
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 343
    invoke-virtual {v5, v14, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "channel_id"

    .line 344
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 347
    :try_start_8
    sget-object v5, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    :cond_7
    :goto_4
    iget-boolean v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTime:Z

    if-eqz v3, :cond_c

    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v5, 0xb

    .line 355
    iget v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 356
    iget v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    const/4 v6, 0x0

    .line 357
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 358
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 360
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    .line 361
    iget v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 362
    iget v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    const/4 v7, 0x0

    .line 363
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 364
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 366
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x5

    const/4 v7, 0x1

    .line 367
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    :cond_8
    const/4 v7, 0x1

    .line 370
    :goto_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/4 v15, 0x5

    .line 372
    invoke-virtual {v9, v15, v7}, Ljava/util/Calendar;->add(II)V

    .line 373
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const/4 v15, 0x1

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    .line 377
    :goto_6
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invoke; start: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", end: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke; c1: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", c2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; quietTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    const/4 v15, 0x0

    :goto_7
    const/4 v3, -0x2

    if-eqz v15, :cond_d

    const/4 v5, 0x0

    .line 383
    iput-object v5, v14, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 384
    iput-object v5, v14, Landroid/app/Notification;->vibrate:[J

    .line 385
    iget v5, v14, Landroid/app/Notification;->defaults:I

    and-int/2addr v5, v3

    iput v5, v14, Landroid/app/Notification;->defaults:I

    .line 386
    iget v5, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v14, Landroid/app/Notification;->defaults:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :cond_d
    const-string v5, "DEFAULT"

    if-nez v15, :cond_16

    .line 392
    :try_start_9
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    .line 393
    iput-object v6, v14, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 394
    iget v6, v14, Landroid/app/Notification;->defaults:I

    const/4 v7, 0x1

    or-int/2addr v6, v7

    iput v6, v14, Landroid/app/Notification;->defaults:I

    .line 395
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; sound: default"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    const-string v6, "SILENCE"

    .line 396
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    .line 397
    iput-object v6, v14, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 398
    iget v6, v14, Landroid/app/Notification;->defaults:I

    and-int/2addr v6, v3

    iput v6, v14, Landroid/app/Notification;->defaults:I

    .line 399
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; sound: silence"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    const-string v6, "CUSTOM"

    .line 400
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".com.applisto.appcloner.classes.DefaultProvider/assets/.notificationSoundFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 404
    iput-object v6, v14, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 405
    iget v7, v14, Landroid/app/Notification;->defaults:I

    and-int/2addr v7, v3

    iput v7, v14, Landroid/app/Notification;->defaults:I

    .line 406
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; sound: custom; uri: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_10
    :goto_8
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    .line 411
    iput-object v6, v14, Landroid/app/Notification;->vibrate:[J

    .line 412
    iget v6, v14, Landroid/app/Notification;->defaults:I

    const/4 v7, 0x2

    or-int/2addr v6, v7

    iput v6, v14, Landroid/app/Notification;->defaults:I

    .line 413
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: default"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_11
    const-string v6, "SILENCE"

    .line 414
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    .line 415
    iput-object v6, v14, Landroid/app/Notification;->vibrate:[J

    .line 416
    iget v6, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v14, Landroid/app/Notification;->defaults:I

    .line 417
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: silence"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_12
    const-string v6, "VERY_SHORT"

    .line 418
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_13

    const/4 v6, 0x2

    new-array v7, v6, [J

    const/4 v6, 0x0

    aput-wide v11, v7, v6

    const-wide/16 v11, 0x32

    const/4 v6, 0x1

    aput-wide v11, v7, v6

    .line 419
    iput-object v7, v14, Landroid/app/Notification;->vibrate:[J

    .line 420
    iget v6, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v14, Landroid/app/Notification;->defaults:I

    .line 421
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: very short"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_13
    const-string v6, "SHORT"

    .line 422
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x2

    new-array v7, v6, [J

    const/4 v6, 0x0

    aput-wide v11, v7, v6

    const-wide/16 v11, 0x64

    const/4 v6, 0x1

    aput-wide v11, v7, v6

    .line 423
    iput-object v7, v14, Landroid/app/Notification;->vibrate:[J

    .line 424
    iget v6, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v14, Landroid/app/Notification;->defaults:I

    .line 425
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: short"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_14
    const-string v6, "LONG"

    .line 426
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x2

    new-array v7, v6, [J

    const/4 v6, 0x0

    aput-wide v11, v7, v6

    const-wide/16 v11, 0x1f4

    const/4 v6, 0x1

    aput-wide v11, v7, v6

    .line 427
    iput-object v7, v14, Landroid/app/Notification;->vibrate:[J

    .line 428
    iget v6, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v14, Landroid/app/Notification;->defaults:I

    .line 429
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: long"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_15
    const-string v6, "VERY_LONG"

    .line 430
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x2

    new-array v7, v6, [J

    const/4 v6, 0x0

    aput-wide v11, v7, v6

    const-wide/16 v11, 0x3e8

    const/4 v6, 0x1

    aput-wide v11, v7, v6

    .line 431
    iput-object v7, v14, Landroid/app/Notification;->vibrate:[J

    .line 432
    iget v6, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v14, Landroid/app/Notification;->defaults:I

    .line 433
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: very long"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_16
    :goto_9
    iget v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    const/16 v7, 0x3e8

    if-eqz v6, :cond_18

    .line 439
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    if-eqz v6, :cond_17

    .line 441
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 444
    :cond_17
    new-instance v6, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;

    invoke-direct {v6, v8, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;-><init>(ILandroid/content/Context;)V

    .line 454
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    iget v11, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    invoke-virtual {v9, v6, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; scheduled timeout; id: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", millis: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    mul-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_18
    iget-boolean v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mHeadsUpNotifications:Z

    if-eqz v6, :cond_19

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v6, v9, :cond_19

    const-string v6, "headsup"

    const/4 v9, 0x2

    .line 461
    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x1

    .line 462
    iput v6, v14, Landroid/app/Notification;->priority:I

    .line 463
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; headsUpNotifications; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_19
    iget-boolean v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    if-eqz v6, :cond_1a

    .line 467
    iget v6, v14, Landroid/app/Notification;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v14, Landroid/app/Notification;->flags:I

    .line 468
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; localOnlyNotifications; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1a
    iget-boolean v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNoOngoingNotifications:Z

    if-eqz v6, :cond_1b

    .line 472
    iget v6, v14, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v14, Landroid/app/Notification;->flags:I

    .line 473
    iget v6, v14, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x21

    iput v6, v14, Landroid/app/Notification;->flags:I

    .line 474
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; noOngoingNotifications; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1b
    iget-boolean v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mShowNotificationTime:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    if-eqz v6, :cond_1c

    .line 479
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v14, Landroid/app/Notification;->when:J

    const-string v6, "android.showWhen"

    const/4 v9, 0x1

    .line 480
    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 481
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; showNotificationTime; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v6, v0

    .line 483
    :try_start_b
    sget-object v9, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    :cond_1c
    :goto_a
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    const/4 v11, -0x1

    if-lt v6, v9, :cond_1e

    const-string v6, "PUBLIC"

    .line 488
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    .line 489
    iput v6, v14, Landroid/app/Notification;->visibility:I

    .line 490
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invoke; made notification public; notification: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1d
    const-string v6, "PRIVATE"

    .line 491
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 492
    iput v11, v14, Landroid/app/Notification;->visibility:I

    const/4 v6, 0x0

    .line 493
    iput-object v6, v14, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 494
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invoke; made notification private; notification: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_b
    const-string v6, "MAX"

    .line 498
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x2

    .line 499
    iput v6, v14, Landroid/app/Notification;->priority:I

    .line 500
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_MAX; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_1f
    const-string v6, "HIGH"

    .line 501
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    .line 502
    iput v6, v14, Landroid/app/Notification;->priority:I

    .line 503
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_HIGH; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 504
    :cond_20
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x0

    .line 505
    iput v5, v14, Landroid/app/Notification;->priority:I

    .line 506
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_DEFAULT; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_21
    const-string v5, "LOW"

    .line 507
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 508
    iput v11, v14, Landroid/app/Notification;->priority:I

    .line 509
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_LOW; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_22
    const-string v5, "MIN"

    .line 510
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 511
    iput v3, v14, Landroid/app/Notification;->priority:I

    .line 512
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_MIN; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_23
    :goto_c
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0xfa

    if-nez v3, :cond_29

    .line 516
    iget v3, v14, Landroid/app/Notification;->ledARGB:I

    if-nez v3, :cond_24

    .line 517
    iput v11, v14, Landroid/app/Notification;->ledARGB:I

    .line 519
    :cond_24
    iget v3, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v14, Landroid/app/Notification;->defaults:I

    .line 520
    iget v3, v14, Landroid/app/Notification;->flags:I

    const/4 v6, 0x1

    or-int/2addr v3, v6

    iput v3, v14, Landroid/app/Notification;->flags:I

    const/4 v3, 0x0

    .line 521
    iput v3, v14, Landroid/app/Notification;->priority:I

    const-string v3, "ON"

    .line 522
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const v3, 0x5f5e100

    .line 523
    iput v3, v14, Landroid/app/Notification;->ledOnMS:I

    const/4 v3, 0x1

    .line 524
    iput v3, v14, Landroid/app/Notification;->ledOffMS:I

    goto :goto_d

    :cond_25
    const-string v3, "FLASH_SLOW"

    .line 525
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 526
    iput v7, v14, Landroid/app/Notification;->ledOnMS:I

    const/16 v3, 0x7d0

    .line 527
    iput v3, v14, Landroid/app/Notification;->ledOffMS:I

    goto :goto_d

    :cond_26
    const-string v3, "FLASH_MEDIUM"

    .line 528
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/16 v3, 0x1f4

    .line 529
    iput v3, v14, Landroid/app/Notification;->ledOnMS:I

    .line 530
    iput v7, v14, Landroid/app/Notification;->ledOffMS:I

    goto :goto_d

    :cond_27
    const-string v3, "FLASH_FAST"

    .line 531
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 532
    iput v5, v14, Landroid/app/Notification;->ledOnMS:I

    .line 533
    iput v5, v14, Landroid/app/Notification;->ledOffMS:I

    goto :goto_d

    :cond_28
    const-string v3, "OFF"

    .line 534
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    .line 535
    iput v3, v14, Landroid/app/Notification;->ledOnMS:I

    .line 536
    iput v3, v14, Landroid/app/Notification;->ledOffMS:I

    .line 540
    :cond_29
    :goto_d
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 541
    iget v3, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2a

    .line 542
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 543
    iput v7, v14, Landroid/app/Notification;->ledOnMS:I

    .line 544
    iput v5, v14, Landroid/app/Notification;->ledOffMS:I

    .line 547
    :cond_2a
    iget v2, v14, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v14, Landroid/app/Notification;->defaults:I

    .line 548
    iget v2, v14, Landroid/app/Notification;->flags:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v14, Landroid/app/Notification;->flags:I

    const/4 v2, 0x0

    .line 549
    iput v2, v14, Landroid/app/Notification;->priority:I

    const-string v2, "WHITE"

    .line 550
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 551
    iput v11, v14, Landroid/app/Notification;->ledARGB:I

    goto :goto_e

    :cond_2b
    const-string v2, "RED"

    .line 552
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/high16 v2, -0x10000

    .line 553
    iput v2, v14, Landroid/app/Notification;->ledARGB:I

    goto :goto_e

    :cond_2c
    const-string v2, "YELLOW"

    .line 554
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/16 v2, -0x100

    .line 555
    iput v2, v14, Landroid/app/Notification;->ledARGB:I

    goto :goto_e

    :cond_2d
    const-string v2, "GREEN"

    .line 556
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const v2, -0xff0100

    .line 557
    iput v2, v14, Landroid/app/Notification;->ledARGB:I

    goto :goto_e

    :cond_2e
    const-string v2, "CYAN"

    .line 558
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const v2, -0xff0001

    .line 559
    iput v2, v14, Landroid/app/Notification;->ledARGB:I

    goto :goto_e

    :cond_2f
    const-string v2, "BLUE"

    .line 560
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const v2, -0xffff01

    .line 561
    iput v2, v14, Landroid/app/Notification;->ledARGB:I

    goto :goto_e

    :cond_30
    const-string v2, "MAGENTA"

    .line 562
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const v2, -0xff01

    .line 563
    iput v2, v14, Landroid/app/Notification;->ledARGB:I

    .line 568
    :cond_31
    :goto_e
    iget v2, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    if-lez v2, :cond_36

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_36

    .line 571
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.applisto.appcloner.action.SNOOZE_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "id"

    .line 573
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x40000000    # 2.0f

    .line 574
    invoke-static {v1, v8, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 576
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 579
    iget-object v5, v14, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_32

    .line 580
    iget-object v5, v14, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    :cond_32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 585
    :cond_33
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 586
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$Action;

    .line 587
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_33

    .line 588
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "snooze_action"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 589
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 593
    :cond_34
    new-instance v5, Landroid/app/Notification$Action;

    const-string v6, "Snooze"

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v2}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 595
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "snooze_action"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-le v2, v5, :cond_35

    const/4 v2, 0x0

    .line 599
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_10

    :cond_35
    const/4 v2, 0x0

    new-array v5, v2, [Landroid/app/Notification$Action;

    .line 602
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/Notification$Action;

    iput-object v2, v14, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 606
    :cond_36
    iget-object v2, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_37

    .line 607
    const-class v2, Landroid/app/Notification;

    const-string v3, "setSmallIcon"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/drawable/Icon;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 608
    iget-object v5, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    aput-object v5, v3, v8

    invoke-virtual {v2, v14, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v3, "invoke; replaced small icon"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.largeIcon"

    .line 610
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "android.largeIcon"

    .line 611
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 612
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v3, "invoke; replaced large icon"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_37
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    if-eqz v2, :cond_38

    iget-boolean v2, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    if-eqz v2, :cond_38

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    const/16 v3, 0x17

    if-lt v2, v3, :cond_38

    .line 620
    :try_start_c
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 623
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 625
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 626
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 628
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 629
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v7, 0x0

    .line 630
    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 631
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 633
    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 634
    const-class v2, Landroid/app/Notification;

    const-string v3, "setSmallIcon"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/drawable/Icon;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v8, 0x0

    :try_start_d
    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v8

    .line 635
    invoke-virtual {v2, v14, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    :goto_11
    move-object v1, v0

    .line 638
    :try_start_e
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_38
    const/4 v8, 0x0

    .line 643
    :goto_12
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationIcon:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    .line 646
    :try_start_f
    iput-object v1, v14, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    const-string v1, "android.largeIcon"

    .line 647
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "android.wearable.EXTENSIONS"

    .line 649
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string v2, "background"

    .line 651
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_39
    const-string v1, "android.car.EXTENSIONS"

    .line 654
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3a

    const-string v2, "large_icon"

    .line 656
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 659
    :cond_3a
    const-class v1, Landroid/app/Notification;

    const-string v2, "mLargeIcon"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v6, 0x1

    .line 660
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 661
    invoke-virtual {v1, v14, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v2, "invoke; removed notification icon"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 666
    :try_start_10
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    :cond_3b
    :goto_13
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationActions:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    .line 673
    :try_start_11
    iput-object v1, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 674
    iput-object v1, v14, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 675
    iput-object v1, v14, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const-string v1, "android.wearable.EXTENSIONS"

    .line 676
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3c

    const-string v2, "actions"

    .line 678
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 680
    :cond_3c
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v2, "invoke; removed notification actions"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_14

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 682
    :try_start_12
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    :cond_3d
    :goto_14
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationPeople:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    if-eqz v1, :cond_42

    :try_start_13
    const-string v1, "android.messagingUser"

    .line 689
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "android.people.list"

    .line 690
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "android.people"

    .line 691
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 692
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3f

    const-string v1, "android.messages"

    .line 693
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 695
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_3f

    aget-object v5, v1, v3

    .line 696
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_3e

    .line 697
    check-cast v5, Landroid/os/Bundle;

    const-string v6, "sender"

    .line 698
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "sender_person"

    .line 699
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 704
    :cond_3f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_41

    const-string v1, "android.messages.historic"

    .line 705
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 707
    array-length v2, v1

    :goto_16
    if-ge v8, v2, :cond_41

    aget-object v3, v1, v8

    .line 708
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_40

    .line 709
    check-cast v3, Landroid/os/Bundle;

    const-string v4, "sender"

    .line 710
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "sender_person"

    .line 711
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 716
    :cond_41
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v2, "invoke; removed notification people"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_17

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 718
    :try_start_14
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    :cond_42
    :goto_17
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mSimpleNotifications:Z

    if-eqz v1, :cond_43

    .line 724
    iget-object v1, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_43

    .line 725
    iget-object v1, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.picture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 726
    iget-object v1, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.largeIcon.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 727
    iget-object v1, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 732
    :cond_43
    iget-object v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    if-eqz v1, :cond_48

    iget-object v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    .line 733
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    if-nez v1, :cond_48

    .line 735
    :try_start_15
    iget-object v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_18
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "replace"

    .line 737
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v2, "with"

    .line 738
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v2, "ignoreCase"

    .line 739
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v2, "replaceInTitle"

    .line 740
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v2, "replaceInContent"

    .line 741
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v2, "replaceInMessages"

    .line 742
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v2, "replaceInActions"

    .line 743
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v1, p0

    move-object v2, v14

    .line 736
    invoke-direct/range {v1 .. v9}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    goto :goto_18

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 747
    :try_start_16
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_1a

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 755
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_44
    const/4 v6, 0x1

    .line 757
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createNotificationChannelGroups"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 758
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createNotificationChannels"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 759
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createNotificationChannelsForPackage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 760
    :cond_45
    iget-object v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 762
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 764
    :goto_19
    array-length v2, v1

    if-ge v6, v2, :cond_47

    .line 765
    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.applisto.appcloner.classes"

    .line 766
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 769
    invoke-virtual {v3, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_46
    move-object/from16 v2, p2

    move-object/from16 v3, p4

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_47
    const/4 v4, 0x0

    return-object v4

    :cond_48
    :goto_1a
    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 779
    invoke-virtual {v3, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 0

    .line 842
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 844
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRunning:Z

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .locals 1

    .line 849
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v0, "onAppExit; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 851
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRunning:Z

    return-void
.end method

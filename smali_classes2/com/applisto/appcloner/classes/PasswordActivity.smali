.class public Lcom/applisto/appcloner/classes/PasswordActivity;
.super Landroid/app/Activity;
.source "PasswordActivity.java"


# static fields
.field public static final PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static sUnlocked:Z


# instance fields
.field private mDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHidePasswordCharacters:Z

.field private mOriginalActivityName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPasswordProtectApp:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStealthMode:Z

.field private mStealthModeUseFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-class v0, Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_passwordEntered"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/PasswordActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getLongPressRunnable()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/PasswordActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthModeUseFingerprint:Z

    return p0
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/PasswordActivity;->listenFingerprints(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/applisto/appcloner/classes/PasswordActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->onDoubleLongPress()V

    return-void
.end method

.method static synthetic access$500(Lcom/applisto/appcloner/classes/PasswordActivity;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private exit()V
    .locals 2

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->finish()V

    .line 454
    :goto_0
    new-instance v0, Lcom/applisto/appcloner/classes/PasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/PasswordActivity$4;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    .line 463
    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/PasswordActivity$4;->start()V

    return-void
.end method

.method private getLongPressRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 362
    new-instance v0, Lcom/applisto/appcloner/classes/PasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/PasswordActivity$3;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    return-object v0
.end method

.method private listenFingerprints(Landroid/content/Context;)V
    .locals 7

    const-string v0, "fingerprint"

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 328
    new-instance v5, Lcom/applisto/appcloner/classes/PasswordActivity$2;

    invoke-direct {v5, p0, p1}, Lcom/applisto/appcloner/classes/PasswordActivity$2;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private onDoubleLongPress()V
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPasswordProtectApp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    .line 388
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->showDialog()V

    goto :goto_1

    .line 385
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startApp()V

    :goto_1
    return-void
.end method

.method private onOk()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 399
    sget-object v3, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 405
    :try_start_1
    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 406
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/applisto/appcloner/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    .line 407
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 410
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    :goto_1
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startApp()V

    goto :goto_2

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    :goto_2
    return-void
.end method

.method private showDialog()V
    .locals 14

    const-string v0, "string"

    const-string v1, "android"

    .line 134
    :try_start_0
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getStringsProperties()Ljava/util/Properties;

    move-result-object v2

    .line 136
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 140
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v7, 0x103012b

    invoke-direct {v4, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 143
    :cond_1
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v7, 0x1030128

    invoke-direct {v4, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_1
    const/high16 v7, 0x41c00000    # 24.0f

    .line 147
    invoke-static {v4, v7}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    .line 148
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    move v9, v7

    .line 150
    :goto_2
    invoke-virtual {v8, v7, v7, v7, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const v7, 0x104000a

    .line 152
    invoke-virtual {p0, v7}, Lcom/applisto/appcloner/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 153
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    iget-boolean v10, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    if-eqz v10, :cond_5

    .line 156
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unfortunately, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has stopped."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v11, 0x0

    .line 161
    :try_start_1
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "aerr_application"

    invoke-virtual {v12, v13, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    new-array v5, v5, [Ljava/lang/Object;

    .line 162
    invoke-static {v4}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    invoke-virtual {p0, v12, v5}, Lcom/applisto/appcloner/classes/PasswordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 163
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v12, "aerr_close"

    invoke-virtual {v5, v12, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 164
    invoke-virtual {p0, v5}, Lcom/applisto/appcloner/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v12, 0x18

    if-lt v5, v12, :cond_3

    .line 170
    :try_start_2
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v12, "aerr_list_item"

    const-string v13, "style"

    invoke-virtual {v5, v12, v13, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 171
    new-instance v12, Landroid/widget/TextView;

    new-instance v13, Landroid/view/ContextThemeWrapper;

    invoke-direct {v13, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v12

    goto :goto_3

    :catch_0
    move-exception v5

    .line 173
    :try_start_3
    sget-object v12, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_3
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v12, "aerr_restart"

    invoke-virtual {v5, v12, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :try_start_4
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "ic_refresh"

    const-string v7, "drawable"

    invoke-virtual {v0, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 182
    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    const/high16 v0, 0x42000000    # 32.0f

    .line 183
    invoke-static {v4, v0}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 184
    invoke-static {v4, v0}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v6, v6, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$T1MHt5AVzb_hjHwVrKkqOkxau-Q;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$T1MHt5AVzb_hjHwVrKkqOkxau-Q;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v11

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v7, v11

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 189
    :goto_4
    :try_start_5
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_3
    :goto_5
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_4

    const/high16 v0, 0x41800000    # 16.0f

    .line 194
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v0, -0x1000000

    .line 195
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_4
    const v0, 0x1030044

    .line 197
    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 199
    :goto_6
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startApp()V

    return-void

    .line 208
    :cond_6
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    .line 209
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    const/4 v5, 0x2

    :cond_7
    const/high16 v1, 0x80000

    or-int/2addr v1, v5

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 214
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 215
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$Elda7giKmVJ9_K9qJYdjPpD3wy4;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$Elda7giKmVJ9_K9qJYdjPpD3wy4;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 220
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mHidePasswordCharacters:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_8

    .line 223
    :try_start_6
    invoke-static {v4}, Lcom/applisto/appcloner/classes/Utils;->getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.applisto.appcloner.classes.secondary.util.NoEchoPasswordTransformationMethod"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/PasswordTransformationMethod;

    .line 226
    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    .line 228
    :try_start_7
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :cond_8
    :goto_7
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v0, "title_enter_password"

    .line 234
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$D6qdW30jvAfIY5pk1DvsC8h2R_0;

    invoke-direct {v2, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$D6qdW30jvAfIY5pk1DvsC8h2R_0;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    :goto_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 239
    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$zc7hd37mOHt0UzAhYJvzuezNGv8;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$zc7hd37mOHt0UzAhYJvzuezNGv8;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v9, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    :cond_9
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    if-eqz v1, :cond_a

    .line 249
    new-instance v1, Lcom/applisto/appcloner/classes/PasswordActivity$1;

    invoke-direct {v1, p0, v0, v4}, Lcom/applisto/appcloner/classes/PasswordActivity$1;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 290
    :cond_a
    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$E8mOz44UXJfPECqeaAedmpy-m7c;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$E8mOz44UXJfPECqeaAedmpy-m7c;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 297
    :try_start_8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 302
    invoke-static {v4}, Lcom/applisto/appcloner/classes/Utils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x17

    if-ge v1, v2, :cond_b

    .line 304
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catch_1
    move-exception v1

    .line 307
    :try_start_9
    sget-object v2, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :cond_b
    :goto_9
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 312
    invoke-static {v0}, Lcom/applisto/appcloner/classes/Utils;->keepDialogOpenOnOrientationChange(Landroid/app/Dialog;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 315
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    :goto_a
    return-void
.end method

.method private startApp()V
    .locals 3

    const/4 v0, 0x1

    .line 423
    sput-boolean v0, Lcom/applisto/appcloner/classes/PasswordActivity;->sUnlocked:Z

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 427
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 430
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 435
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 439
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    :goto_1
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$showDialog$0$PasswordActivity(Landroid/view/View;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    return-void
.end method

.method public synthetic lambda$showDialog$1$PasswordActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->onOk()V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$showDialog$2$PasswordActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    return-void
.end method

.method public synthetic lambda$showDialog$3$PasswordActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->onOk()V

    return-void
.end method

.method public synthetic lambda$showDialog$4$PasswordActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 291
    sget-boolean p1, Lcom/applisto/appcloner/classes/PasswordActivity;->sUnlocked:Z

    if-nez p1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "stealthMode"

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 80
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 82
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string v1, "com.applisto.appcloner.originalActivityName"

    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object p1

    const-string v1, "passwordProtectApp"

    const/4 v2, 0x0

    .line 91
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPasswordProtectApp:Z

    const-string v1, "appPassword"

    const/4 v3, 0x0

    .line 92
    invoke-virtual {p1, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    goto :goto_0

    :cond_1
    const-string v0, "appPasswordStealthMode"

    .line 96
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    :goto_0
    const-string v0, "stealthModeUseFingerprint"

    .line 98
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthModeUseFingerprint:Z

    const-string v0, "hidePasswordCharacters"

    .line 99
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mHidePasswordCharacters:Z

    .line 101
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "appPasswordAskOnlyOnce"

    .line 102
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 113
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 114
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate; passwordEntered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 116
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 122
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    .line 126
    :cond_3
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->showDialog()V

    return-void
.end method

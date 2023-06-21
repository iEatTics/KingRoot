.class public Lcom/applisto/appcloner/classes/ConfirmExit;
.super Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;
.source "ConfirmExit.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfirmExit:Z

.field private mStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/applisto/appcloner/classes/ConfirmExit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/ConfirmExit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;-><init>()V

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "confirmExit"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/ConfirmExit;->mConfirmExit:Z

    .line 27
    sget-object p1, Lcom/applisto/appcloner/classes/ConfirmExit;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfirmExit; confirmExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/ConfirmExit;->mConfirmExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$handleBackPressed$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 43
    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/ConfirmExit;->mStringsProperties:Ljava/util/Properties;

    const-string v2, "confirm_exit_app_message"

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x104000a

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$ConfirmExit$_VlRN7CNq_MRopvpQpFzZtXWCcA;

    invoke-direct {v1, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$ConfirmExit$_VlRN7CNq_MRopvpQpFzZtXWCcA;-><init>(Landroid/app/Activity;)V

    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public install(Ljava/util/Properties;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/applisto/appcloner/classes/ConfirmExit;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/applisto/appcloner/classes/ConfirmExit;->mStringsProperties:Ljava/util/Properties;

    .line 34
    iget-boolean p1, p0, Lcom/applisto/appcloner/classes/ConfirmExit;->mConfirmExit:Z

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ConfirmExit;->onCreate()Z

    :cond_0
    return-void
.end method

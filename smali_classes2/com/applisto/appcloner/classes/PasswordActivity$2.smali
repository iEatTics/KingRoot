.class Lcom/applisto/appcloner/classes/PasswordActivity$2;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PasswordActivity;->listenFingerprints(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/content/Context;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$2;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/PasswordActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAuthenticationError$0$PasswordActivity$2(Landroid/content/Context;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$2;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$300(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/content/Context;)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 350
    invoke-static {}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError; errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errString: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$2;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$500(Lcom/applisto/appcloner/classes/PasswordActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/applisto/appcloner/classes/PasswordActivity$2;->val$context:Landroid/content/Context;

    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$2$W-9YASUACguDr_7MTu_lz-eCQhs;

    invoke-direct {v0, p0, p2}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$2$W-9YASUACguDr_7MTu_lz-eCQhs;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity$2;Landroid/content/Context;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 345
    invoke-static {}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationFailed; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    .line 334
    invoke-static {}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAuthenticationSucceeded; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :try_start_0
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$2;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$400(Lcom/applisto/appcloner/classes/PasswordActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    invoke-static {}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

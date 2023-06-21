.class public Lcom/kingroot/kinguser/bgg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AliveImprover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bgg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static abA()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/bgg$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bgg$1;-><init>()V

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07007c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.kingroot.kinguser.account_syn_auth"

    const-string v3, "com.kingroot.kinguser.account"

    invoke-static {v1, v2, v3, v0}, Lcom/kingroot/kinguser/uk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 41
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/ul;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 42
    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ul;->y(J)V

    .line 48
    return-void
.end method

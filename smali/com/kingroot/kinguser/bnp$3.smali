.class Lcom/kingroot/kinguser/bnp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bnp;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bEK:Lcom/kingroot/kinguser/bnp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bnp;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/kingroot/kinguser/bnp$3;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 619
    :try_start_0
    invoke-static {}, Lcom/tencent/open/web/security/JniInterface;->clearAllPWD()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    goto :goto_0
.end method

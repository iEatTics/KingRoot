.class Lcom/kingroot/kinguser/auz$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auz;->h(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTj:Lcom/kingroot/kinguser/auz;

.field final synthetic aeP:Lcom/kingroot/kingmaster/network/updata/CheckResult;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auz;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kingroot/kinguser/auz$3;->aTj:Lcom/kingroot/kinguser/auz;

    iput-object p2, p0, Lcom/kingroot/kinguser/auz$3;->aeP:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auz$3;->aeP:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aeg;->a(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)I

    .line 108
    return-void
.end method

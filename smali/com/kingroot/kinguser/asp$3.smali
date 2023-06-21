.class Lcom/kingroot/kinguser/asp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNl:Lcom/kingroot/kinguser/asp;

.field final synthetic anx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/kingroot/kinguser/asp$3;->aNl:Lcom/kingroot/kinguser/asp;

    iput-object p2, p0, Lcom/kingroot/kinguser/asp$3;->anx:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ad(Z)V
    .locals 3

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/asp$3;->aNl:Lcom/kingroot/kinguser/asp;

    iget-object v1, p0, Lcom/kingroot/kinguser/asp$3;->anx:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/asp;Ljava/lang/String;I)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asp$3;->aNl:Lcom/kingroot/kinguser/asp;

    iget-object v1, p0, Lcom/kingroot/kinguser/asp$3;->anx:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/asp;->a(Lcom/kingroot/kinguser/asp;Ljava/lang/String;I)V

    goto :goto_0
.end method

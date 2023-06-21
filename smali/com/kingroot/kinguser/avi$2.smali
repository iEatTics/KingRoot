.class Lcom/kingroot/kinguser/avi$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avi;->j(Lcom/kingroot/kinguser/abc;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTs:Lcom/kingroot/kinguser/avi;

.field final synthetic aTt:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avi;Z)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/kingroot/kinguser/avi$2;->aTs:Lcom/kingroot/kinguser/avi;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/avi$2;->aTt:Z

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/avi$2;->aTt:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->cq(Z)V

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/avi$2;->aTt:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/biq;->eh(Z)V

    .line 245
    return-void
.end method

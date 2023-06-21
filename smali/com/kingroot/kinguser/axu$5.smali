.class Lcom/kingroot/kinguser/axu$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->wC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$5;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18891

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 464
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$5;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->c(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/aul$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aul$a;->cX(Z)V

    .line 465
    return-void
.end method

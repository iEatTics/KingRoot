.class Lcom/kingroot/kinguser/axm$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->Uq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$27;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 520
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18867

    .line 521
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 522
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$27;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->i(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/aui$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qe()V

    .line 523
    return-void
.end method

.class Lcom/kingroot/kinguser/axo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axo;->a(ILcom/kingroot/kinguser/model/RootMgrAppModel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axo;I)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kingroot/kinguser/axo$1;->this$0:Lcom/kingroot/kinguser/axo;

    iput p2, p0, Lcom/kingroot/kinguser/axo$1;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$1;->this$0:Lcom/kingroot/kinguser/axo;

    iget v1, p0, Lcom/kingroot/kinguser/axo$1;->Qj:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axo;->a(Lcom/kingroot/kinguser/axo;I)V

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18814

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 167
    return-void
.end method

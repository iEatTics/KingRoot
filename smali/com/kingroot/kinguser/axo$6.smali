.class Lcom/kingroot/kinguser/axo$6;
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
.field final synthetic baL:Lcom/kingroot/kinguser/model/RootMgrAppModel;

.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axo;Lcom/kingroot/kinguser/model/RootMgrAppModel;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kingroot/kinguser/axo$6;->this$0:Lcom/kingroot/kinguser/axo;

    iput-object p2, p0, Lcom/kingroot/kinguser/axo$6;->baL:Lcom/kingroot/kinguser/model/RootMgrAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$6;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->a(Lcom/kingroot/kinguser/axo;)V

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axo$6;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v1}, Lcom/kingroot/kinguser/axo;->b(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/axo$6;->baL:Lcom/kingroot/kinguser/model/RootMgrAppModel;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18813

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 179
    return-void
.end method

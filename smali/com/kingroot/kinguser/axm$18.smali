.class Lcom/kingroot/kinguser/axm$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->Qs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ban:Lcom/kingroot/kinguser/bii;

.field final synthetic bao:Lcom/kingroot/kinguser/aks;

.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;Lcom/kingroot/kinguser/bii;Lcom/kingroot/kinguser/aks;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$18;->this$0:Lcom/kingroot/kinguser/axm;

    iput-object p2, p0, Lcom/kingroot/kinguser/axm$18;->ban:Lcom/kingroot/kinguser/bii;

    iput-object p3, p0, Lcom/kingroot/kinguser/axm$18;->bao:Lcom/kingroot/kinguser/aks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$18;->ban:Lcom/kingroot/kinguser/bii;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bii;->dismiss()V

    .line 1454
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1456
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$18;->bao:Lcom/kingroot/kinguser/aks;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ck(Z)V

    .line 1457
    return-void
.end method

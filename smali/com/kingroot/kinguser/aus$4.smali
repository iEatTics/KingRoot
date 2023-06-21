.class Lcom/kingroot/kinguser/aus$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aus;->QO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiU:Lcom/kingroot/kinguser/bid;

.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;Lcom/kingroot/kinguser/bid;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$4;->this$0:Lcom/kingroot/kinguser/aus;

    iput-object p2, p0, Lcom/kingroot/kinguser/aus$4;->aiU:Lcom/kingroot/kinguser/bid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 894
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1891f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 895
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$4;->aiU:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 896
    return-void
.end method

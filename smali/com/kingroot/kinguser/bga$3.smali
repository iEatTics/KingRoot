.class Lcom/kingroot/kinguser/bga$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->dZ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$3;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 560
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18951

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 561
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$3;->this$0:Lcom/kingroot/kinguser/bga;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;Z)V

    .line 562
    return-void
.end method

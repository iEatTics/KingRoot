.class Lcom/kingroot/kinguser/ann$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ann;->Ji()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCv:Lcom/kingroot/kinguser/bid;

.field final synthetic this$0:Lcom/kingroot/kinguser/ann;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ann;Lcom/kingroot/kinguser/bid;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/kingroot/kinguser/ann$1;->this$0:Lcom/kingroot/kinguser/ann;

    iput-object p2, p0, Lcom/kingroot/kinguser/ann$1;->aCv:Lcom/kingroot/kinguser/bid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$1;->aCv:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 373
    return-void
.end method

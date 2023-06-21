.class Lcom/kingroot/kinguser/bga$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->aG(Z)V
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
    .line 309
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$12;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$12;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;Landroid/view/View;)V

    .line 313
    return-void
.end method

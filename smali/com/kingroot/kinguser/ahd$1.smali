.class Lcom/kingroot/kinguser/ahd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahd;->aG(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahd;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/kingroot/kinguser/ahd$1;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$1;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/ahd;->a(Lcom/kingroot/kinguser/ahd;Landroid/view/View;)V

    .line 376
    return-void
.end method

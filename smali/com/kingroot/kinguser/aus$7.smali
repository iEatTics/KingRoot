.class Lcom/kingroot/kinguser/aus$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aus;->gQ(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hs:Landroid/content/Intent;

.field final synthetic this$0:Lcom/kingroot/kinguser/aus;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$7;->this$0:Lcom/kingroot/kinguser/aus;

    iput-object p2, p0, Lcom/kingroot/kinguser/aus$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kingroot/kinguser/aus$7;->Hs:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kingroot/kinguser/aus$7;->Hs:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 418
    return-void
.end method

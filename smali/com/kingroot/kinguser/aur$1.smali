.class Lcom/kingroot/kinguser/aur$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aur;->a(Ljava/lang/String;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSf:I

.field final synthetic aSg:Ljava/lang/String;

.field final synthetic aSh:I

.field final synthetic this$0:Lcom/kingroot/kinguser/aur;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aur;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/kingroot/kinguser/aur$1;->this$0:Lcom/kingroot/kinguser/aur;

    iput p2, p0, Lcom/kingroot/kinguser/aur$1;->aSf:I

    iput-object p3, p0, Lcom/kingroot/kinguser/aur$1;->aSg:Ljava/lang/String;

    iput p4, p0, Lcom/kingroot/kinguser/aur$1;->aSh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/aur$1;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-static {v0}, Lcom/kingroot/kinguser/aur;->a(Lcom/kingroot/kinguser/aur;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 169
    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/activitys/ExaminationOptDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v2, "opt.detail.score"

    iget v3, p0, Lcom/kingroot/kinguser/aur$1;->aSf:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v2, "opt.detail.status"

    iget-object v3, p0, Lcom/kingroot/kinguser/aur$1;->aSg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget v2, p0, Lcom/kingroot/kinguser/aur$1;->aSh:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    const v1, 0x7f04001c

    const v2, 0x7f04001a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

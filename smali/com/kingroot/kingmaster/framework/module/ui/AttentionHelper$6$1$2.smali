.class Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic adi:Ljava/util/ArrayList;

.field final synthetic adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

.field final synthetic adk:Ljava/util/ArrayList;

.field final synthetic adl:J


# direct methods
.method constructor <init>(Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

    iput-object p2, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adi:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adk:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adl:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v1, 0x1a

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 1872
    iget-object v0, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adi:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/ast;->r(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1873
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07048b

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adk:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1874
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07048a

    new-array v4, v12, [Ljava/lang/Object;

    iget-wide v10, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adl:J

    invoke-static {v10, v11}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0, v2, v4}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1875
    new-instance v8, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-direct {v8, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1876
    const-string v0, "key_from_uninstall_notification_id"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1877
    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-direct {v6, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1878
    const-string v0, "key_from_uninstall_notification_id"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1879
    const-string v0, "key_is_auto_install"

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1881
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v4, 0x18965

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1882
    iget-object v0, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

    iget-object v0, v0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->this$1:Lcom/kingroot/kinguser/adm$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/adm$5;->adc:Lcom/kingroot/kinguser/adm;

    .line 1884
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0703f6

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v2

    move v10, v9

    .line 1882
    invoke-virtual/range {v0 .. v10}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Landroid/content/Intent;ZZ)V

    .line 1887
    iget-object v0, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

    iget-object v0, v0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->this$1:Lcom/kingroot/kinguser/adm$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/adm$5;->ade:Lcom/kingroot/kinguser/akl;

    iget-object v1, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

    iget-object v1, v1, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->this$1:Lcom/kingroot/kinguser/adm$5;

    iget-wide v2, v1, Lcom/kingroot/kinguser/adm$5;->adf:J

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->az(J)V

    .line 1888
    iget-object v0, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

    iget-object v0, v0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->this$1:Lcom/kingroot/kinguser/adm$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/adm$5;->ade:Lcom/kingroot/kinguser/akl;

    iget-object v1, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;->adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

    iget-object v1, v1, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->this$1:Lcom/kingroot/kinguser/adm$5;

    iget v1, v1, Lcom/kingroot/kinguser/adm$5;->adg:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->ec(I)V

    .line 1889
    return-void
.end method

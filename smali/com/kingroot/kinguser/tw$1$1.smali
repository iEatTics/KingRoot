.class Lcom/kingroot/kinguser/tw$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tw$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HN:D

.field final synthetic HO:Lcom/kingroot/kinguser/tw$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/tw$1;D)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingroot/kinguser/tw$1$1;->HO:Lcom/kingroot/kinguser/tw$1;

    iput-wide p2, p0, Lcom/kingroot/kinguser/tw$1$1;->HN:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 138
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aW(I)Landroid/content/Intent;

    move-result-object v1

    .line 139
    const-string v2, "extra_cpu_rate"

    iget-wide v4, p0, Lcom/kingroot/kinguser/tw$1$1;->HN:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

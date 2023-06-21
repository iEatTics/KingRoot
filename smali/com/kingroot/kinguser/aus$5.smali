.class Lcom/kingroot/kinguser/aus$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$5;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 904
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 906
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aix;->yH()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_0
    sget-boolean v0, Lcom/kingroot/kinguser/aix;->asI:Z

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$5;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->g(Lcom/kingroot/kinguser/aus;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    .line 914
    if-nez v0, :cond_0

    .line 922
    :goto_1
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 909
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$5;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aus;->gQ(I)V

    goto :goto_0

    .line 917
    :cond_0
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->cW(I)V

    goto :goto_1

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$5;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aus;->gQ(I)V

    goto :goto_1
.end method

.class Lcom/kingroot/kinguser/anq$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anq;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 108
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anz;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/anz;->cD(Z)V

    .line 109
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/anr;->cD(Z)V

    .line 110
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aoc;->cD(Z)V

    .line 111
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/anz;->av(Ljava/util/List;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/anz;->cD(Z)V

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anr;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/anr;->cD(Z)V

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aoc;->cD(Z)V

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->d(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aof;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aof;->cD(Z)V

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->f(Lcom/kingroot/kinguser/anq;)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    iget-object v2, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v2}, Lcom/kingroot/kinguser/anq;->g(Lcom/kingroot/kinguser/anq;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/anq;->B(Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->h(Lcom/kingroot/kinguser/anq;)I

    .line 123
    monitor-exit v1

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;I)I

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anr;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v2}, Lcom/kingroot/kinguser/anq;->g(Lcom/kingroot/kinguser/anq;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v3}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/anr;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 128
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->i(Lcom/kingroot/kinguser/anq;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gT()V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->i(Lcom/kingroot/kinguser/anq;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    goto/16 :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/anz;->cD(Z)V

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/anr;->cD(Z)V

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aoc;->cD(Z)V

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->d(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aof;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aof;->cD(Z)V

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 139
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aoc;->aT(Ljava/util/List;)V

    goto/16 :goto_0

    .line 142
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anq;->Jy()V

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/anz;->cD(Z)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anr;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/anr;->cD(Z)V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aoc;->cD(Z)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->d(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aof;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aof;->cD(Z)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anr;->JB()V

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->i(Lcom/kingroot/kinguser/anq;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->i(Lcom/kingroot/kinguser/anq;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gU()V

    goto/16 :goto_0

    .line 153
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/anz;->cD(Z)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/anr;->cD(Z)V

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aoc;->cD(Z)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->d(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aof;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aof;->cD(Z)V

    .line 157
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 158
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aoc;->aS(Ljava/util/List;)V

    goto/16 :goto_0

    .line 161
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 162
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->d(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aof;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/aof;->cD(Z)V

    .line 163
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->d(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aof;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aof;->d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anq$1;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v1, v2, v3, v0}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

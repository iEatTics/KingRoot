.class public Lcom/kingroot/kinguser/bfc;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final bmc:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blW:Z

.field private final blY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;",
            ">;"
        }
    .end annotation
.end field

.field private blZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private bma:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/common/uilib/SlidingUpPanelLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final bmb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/bez;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    .line 39
    sget-object v0, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-class v2, Lcom/kingroot/kinguser/bfh;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-class v2, Lcom/kingroot/kinguser/bfb;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-class v2, Lcom/kingroot/kinguser/bfe;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-class v2, Lcom/kingroot/kinguser/bfd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-class v2, Lcom/kingroot/kinguser/bfg;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-class v2, Lcom/kingroot/kinguser/bff;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bfc;->bmb:Ljava/util/Set;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bfc;->blW:Z

    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/bfc;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bfc;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 53
    return-void
.end method

.method private a(ILcom/kingroot/kinguser/bez;)V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    .line 141
    iget-object v4, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    monitor-enter v4

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/kingroot/kinguser/bez;->blP:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 157
    iget-object v5, p2, Lcom/kingroot/kinguser/bez;->blP:Landroid/view/View;

    if-eqz v3, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_1
    iget-object v0, p2, Lcom/kingroot/kinguser/bez;->blO:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 161
    iget-object v5, p2, Lcom/kingroot/kinguser/bez;->blO:Landroid/view/View;

    if-eqz v3, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_2
    monitor-exit v4

    .line 165
    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    add-int/lit8 v5, p1, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 149
    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    if-eqz v0, :cond_0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 157
    goto :goto_1

    :cond_6
    move v0, v2

    .line 161
    goto :goto_2

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ZF()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 196
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    monitor-enter v1

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfc;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    monitor-exit v1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/bfc;->blY:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 94
    if-nez p2, :cond_4

    .line 95
    sget-object v2, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    iget v3, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 96
    if-nez v2, :cond_1

    move-object p2, v5

    .line 136
    :cond_0
    :goto_0
    return-object p2

    .line 100
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/bez;

    .line 101
    instance-of v3, v2, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/kingroot/kinguser/bfc;->bma:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    .line 103
    if-eqz v3, :cond_2

    .line 104
    move-object v0, v2

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;)V

    .line 108
    :cond_2
    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/bez;->a(Lcom/kingroot/kinguser/bfc;)V

    .line 109
    iget-object v3, p0, Lcom/kingroot/kinguser/bfc;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bez;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 110
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bez;->r(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v3, p0, Lcom/kingroot/kinguser/bfc;->bmb:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v2

    .line 126
    :goto_1
    instance-of v2, v3, Lcom/kingroot/kinguser/bfb;

    if-eqz v2, :cond_3

    move-object v2, v3

    .line 127
    check-cast v2, Lcom/kingroot/kinguser/bfb;

    iget-boolean v4, p0, Lcom/kingroot/kinguser/bfc;->blW:Z

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/bfb;->dL(Z)Lcom/kingroot/kinguser/bfb;

    .line 130
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/kingroot/kinguser/bfc;->a(ILcom/kingroot/kinguser/bez;)V

    .line 131
    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/bez;->a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V

    .line 132
    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/bez;->s(Ljava/lang/Object;)V

    .line 133
    instance-of v1, v3, Lcom/kingroot/kinguser/bfd;

    if-eqz v1, :cond_0

    .line 134
    check-cast v3, Lcom/kingroot/kinguser/bfd;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bfd;->ZK()V

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    move-object p2, v5

    .line 115
    goto :goto_0

    .line 116
    :catch_1
    move-exception v1

    move-object p2, v5

    .line 118
    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/bez;

    .line 123
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bez;->r(Ljava/lang/Object;)V

    move-object v3, v2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/kingroot/kinguser/bfc;->bmc:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public j(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfc;->bma:Ljava/lang/ref/WeakReference;

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->bmb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bez;

    .line 58
    instance-of v2, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

    if-eqz v2, :cond_0

    .line 59
    if-eqz p1, :cond_0

    .line 60
    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

    invoke-virtual {p1, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;)V

    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->bmb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bez;

    .line 209
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bez;->onDestroy()V

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/bfc;->bmb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bez;

    .line 203
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bez;->onResume()V

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfc;->blZ:Ljava/lang/ref/WeakReference;

    .line 186
    return-void
.end method

.method public setWellChosenMode(Z)V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bfc;->blW:Z

    if-eq v0, p1, :cond_0

    .line 68
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bfc;->blW:Z

    .line 71
    :cond_0
    return-void
.end method

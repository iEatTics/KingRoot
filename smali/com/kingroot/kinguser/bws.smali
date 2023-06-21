.class public Lcom/kingroot/kinguser/bws;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bws$a;
    }
.end annotation


# static fields
.field private static final bSz:[I


# instance fields
.field private bSA:Lcom/kingroot/kinguser/bws$a;

.field private final bSw:Landroid/hardware/SensorManager;

.field private final bSx:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final bSy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/bwu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/bws;->bSz:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bws;->bSx:Ljava/util/HashSet;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bws;->bSy:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Lcom/kingroot/kinguser/bws$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bws$a;-><init>(Lcom/kingroot/kinguser/bws;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bws;->bSA:Lcom/kingroot/kinguser/bws$a;

    .line 116
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/kingroot/kinguser/bws;->bSw:Landroid/hardware/SensorManager;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bws;->bSw:Landroid/hardware/SensorManager;

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bws;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSy:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static d(Landroid/util/SparseArray;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/bwu;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 211
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 215
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 216
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwu;

    .line 217
    if-nez v0, :cond_3

    .line 215
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 219
    :cond_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwu;->ajb()[Ljava/lang/Object;

    move-result-object v4

    .line 220
    if-eqz v4, :cond_2

    array-length v3, v4

    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwu;->ajc()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    move v3, v2

    .line 230
    :goto_2
    array-length v0, v4

    if-ge v3, v0, :cond_2

    .line 231
    aget-object v0, v4, v3

    check-cast v0, Ljava/util/List;

    .line 233
    if-nez v0, :cond_5

    .line 230
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 236
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v5, Lcom/kingroot/kinguser/bwr;->bSu:I

    div-int/lit8 v5, v5, 0x4

    if-ge v0, v5, :cond_4

    goto :goto_0

    .line 242
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized aiR()V
    .locals 5

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSw:Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bws;->bSx:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSx:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 171
    iget-object v3, p0, Lcom/kingroot/kinguser/bws;->bSw:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/kingroot/kinguser/bws;->bSA:Lcom/kingroot/kinguser/bws$a;

    invoke-virtual {v3, v4, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_1

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSx:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 174
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSA:Lcom/kingroot/kinguser/bws$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bws$a;->stopListening()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public aiS()J
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSA:Lcom/kingroot/kinguser/bws$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bws$a;->aiS()J

    move-result-wide v0

    return-wide v0
.end method

.method public aiT()J
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSA:Lcom/kingroot/kinguser/bws$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bws$a;->aiT()J

    move-result-wide v0

    return-wide v0
.end method

.method public aiU()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/bwu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v3, p0, Lcom/kingroot/kinguser/bws;->bSy:Landroid/util/SparseArray;

    monitor-enter v3

    .line 196
    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 197
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSy:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSy:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwu;

    .line 200
    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {v1}, Lcom/kingroot/kinguser/bws;->d(Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    monitor-exit v3

    move-object v0, v1

    .line 205
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v3

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized cK(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bws;->bSw:Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 130
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bws;->bSA:Lcom/kingroot/kinguser/bws$a;

    invoke-virtual {v1, p1, p2}, Lcom/kingroot/kinguser/bws$a;->cL(J)V

    .line 134
    iget-object v1, p0, Lcom/kingroot/kinguser/bws;->bSx:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/bws;->bSx:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 136
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :try_start_3
    iget-object v2, p0, Lcom/kingroot/kinguser/bws;->bSx:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    :try_start_4
    sget-object v3, Lcom/kingroot/kinguser/bws;->bSz:[I

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_4

    aget v5, v3, v1

    .line 141
    iget-object v6, p0, Lcom/kingroot/kinguser/bws;->bSw:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    .line 142
    if-nez v5, :cond_3

    .line 140
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 127
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_3
    :try_start_7
    iget-object v6, p0, Lcom/kingroot/kinguser/bws;->bSw:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/kingroot/kinguser/bws;->bSA:Lcom/kingroot/kinguser/bws$a;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    const/4 v0, 0x1

    .line 150
    iget-object v6, p0, Lcom/kingroot/kinguser/bws;->bSx:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 156
    if-nez v0, :cond_0

    .line 157
    :try_start_a
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bws;->aiR()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/kingroot/kinguser/bws;->bSy:Landroid/util/SparseArray;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bws;->bSy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public Lcom/kingroot/kinguser/avl;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static volatile aTA:Lcom/kingroot/kinguser/avl;


# instance fields
.field private final aTB:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aTC:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aTD:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aTE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aTF:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aTG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aTH:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const v0, 0x9d68

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avl;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avl;->aTB:Ljava/util/HashSet;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avl;->aTC:Ljava/util/HashSet;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avl;->aTD:Ljava/util/HashSet;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avl;->aTE:Ljava/util/HashSet;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avl;->aTF:Ljava/util/HashSet;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avl;->aTG:Ljava/util/HashSet;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avl;->aTH:Ljava/util/HashSet;

    .line 111
    invoke-direct {p0}, Lcom/kingroot/kinguser/avl;->RD()V

    .line 112
    return-void
.end method

.method public static RC()Lcom/kingroot/kinguser/avl;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/kingroot/kinguser/avl;->aTA:Lcom/kingroot/kinguser/avl;

    if-nez v0, :cond_1

    .line 119
    const-class v1, Lcom/kingroot/kinguser/avl;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/avl;->aTA:Lcom/kingroot/kinguser/avl;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/kingroot/kinguser/avl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avl;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avl;->aTA:Lcom/kingroot/kinguser/avl;

    .line 123
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/avl;->aTA:Lcom/kingroot/kinguser/avl;

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private RD()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 134
    iget-object v1, p0, Lcom/kingroot/kinguser/avl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avl;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 137
    :cond_0
    monitor-exit v1

    .line 245
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 142
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 143
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 144
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 145
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 146
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 147
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 148
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 149
    iget-object v10, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    .line 155
    :try_start_1
    iget-object v10, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 160
    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 162
    :pswitch_0
    :try_start_2
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 166
    :pswitch_1
    :try_start_3
    iget-object v10, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    .line 173
    :try_start_4
    iget-object v10, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    .line 181
    :try_start_5
    iget-object v11, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v11

    .line 187
    if-ne v10, v12, :cond_4

    .line 188
    if-ne v11, v12, :cond_3

    .line 189
    :try_start_6
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_3
    if-ne v11, v13, :cond_2

    .line 191
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_4
    if-ne v10, v13, :cond_2

    .line 194
    if-ne v11, v12, :cond_5

    .line 195
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_5
    if-ne v11, v13, :cond_2

    .line 197
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :pswitch_2
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :pswitch_3
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    :cond_6
    iget-object v9, p0, Lcom/kingroot/kinguser/avl;->aTB:Ljava/util/HashSet;

    monitor-enter v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 217
    :try_start_7
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTB:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTB:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 219
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 220
    :try_start_8
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTC:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 221
    :try_start_9
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTC:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTC:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 223
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 224
    :try_start_a
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTD:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 225
    :try_start_b
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTD:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTD:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 227
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 228
    :try_start_c
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTE:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 229
    :try_start_d
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTE:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTE:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 231
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 232
    :try_start_e
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTF:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 233
    :try_start_f
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTF:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTF:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 235
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 236
    :try_start_10
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTG:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 237
    :try_start_11
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTG:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTG:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 239
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 240
    :try_start_12
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTH:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 241
    :try_start_13
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTH:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/avl;->aTH:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 243
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 244
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    .line 219
    :catchall_1
    move-exception v0

    :try_start_15
    monitor-exit v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 223
    :catchall_2
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 227
    :catchall_3
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 231
    :catchall_4
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 235
    :catchall_5
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 239
    :catchall_6
    move-exception v0

    :try_start_1f
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 243
    :catchall_7
    move-exception v0

    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :try_start_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 182
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 174
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 156
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public RE()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/kingroot/kinguser/avl;->aTB:Ljava/util/HashSet;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTB:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 255
    monitor-exit v1

    .line 256
    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RF()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/kingroot/kinguser/avl;->aTC:Ljava/util/HashSet;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTC:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 267
    monitor-exit v1

    .line 268
    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RG()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/kingroot/kinguser/avl;->aTD:Ljava/util/HashSet;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTD:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 279
    monitor-exit v1

    .line 280
    return-object v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RH()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 289
    iget-object v1, p0, Lcom/kingroot/kinguser/avl;->aTE:Ljava/util/HashSet;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTE:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 291
    monitor-exit v1

    .line 292
    return-object v0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RI()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/kingroot/kinguser/avl;->aTF:Ljava/util/HashSet;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTF:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 303
    monitor-exit v1

    .line 304
    return-object v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RJ()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/kingroot/kinguser/avl;->aTG:Ljava/util/HashSet;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/avl;->aTG:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 315
    monitor-exit v1

    .line 316
    return-object v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected uy()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/kingroot/kinguser/avl;->RD()V

    .line 336
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->syncListWithDaemon()V

    .line 337
    return-void
.end method

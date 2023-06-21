.class public Lcom/kingroot/kinguser/avu;
.super Lcom/kingroot/kinguser/avk;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/avu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aUf:Ljava/lang/Object;

.field private aUg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bq;",
            ">;"
        }
    .end annotation
.end field

.field private aUh:Lcom/kingroot/kinguser/so;

.field private aUi:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/kingroot/kinguser/avu$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avu$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avu;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avk;-><init>(I)V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avu;->aUf:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    .line 106
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    .line 109
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->aUf:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "10000.cache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    new-instance v2, Lcom/kingroot/kinguser/so;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/so;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/avu;->aUh:Lcom/kingroot/kinguser/so;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUh:Lcom/kingroot/kinguser/so;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/so;->jp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUh:Lcom/kingroot/kinguser/so;

    iget-object v2, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/so;->b(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(ILcom/kingroot/kinguser/avu$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avu;-><init>(I)V

    return-void
.end method

.method public static Sb()Lcom/kingroot/kinguser/avu;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/kingroot/kinguser/avu;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avu;

    return-object v0
.end method

.method public static hi(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 649
    packed-switch p0, :pswitch_data_0

    .line 663
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070266

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 652
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 654
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070265

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 656
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070267

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 658
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070269

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 660
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070268

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static hj(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 668
    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 669
    :cond_0
    const/4 v0, 0x0

    .line 672
    :cond_1
    return v0
.end method


# virtual methods
.method public Sc()Ljava/util/Set;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .line 147
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 149
    iget-object v3, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 151
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 153
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x1

    .line 164
    :try_start_1
    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 168
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "M"

    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    return-object v2

    .line 165
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public Sd()Ljava/util/Set;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 187
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 189
    iget-object v4, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 191
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 193
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :try_start_1
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 208
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "M"

    iget-object v6, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v6, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :try_start_3
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 220
    :goto_2
    :try_start_4
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kS:Ljava/lang/String;

    .line 222
    new-instance v7, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;

    invoke-direct {v7, v6, v1, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 205
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_1

    .line 217
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_2

    .line 226
    :cond_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    return-object v3
.end method

.method public Se()Ljava/util/Set;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 278
    iget-object v3, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 280
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    const/4 v1, 0x1

    .line 284
    :try_start_1
    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 288
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const-string v1, "M"

    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 293
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    return-object v2

    .line 285
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public Sf()Ljava/util/Set;
    .locals 6
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
    .line 591
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 593
    iget-object v3, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 594
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 595
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    const/4 v1, 0x1

    .line 599
    :try_start_1
    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 603
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 615
    return-object v2

    .line 600
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public Sg()Ljava/util/Set;
    .locals 6
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
    .line 619
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 621
    iget-object v3, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 623
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    const/4 v1, 0x1

    .line 627
    :try_start_1
    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 631
    :goto_1
    if-nez v1, :cond_0

    .line 636
    :try_start_2
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 643
    return-object v2

    .line 628
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public Sh()V
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->aUf:Ljava/lang/Object;

    monitor-enter v1

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 703
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUh:Lcom/kingroot/kinguser/so;

    iget-object v2, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/so;->b(Ljava/lang/Object;)Z

    .line 704
    monitor-exit v1

    .line 705
    return-void

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/kingroot/kinguser/br;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/br;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/avk;->a(Lcom/kingroot/kinguser/br;)V

    .line 129
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 131
    iget-object v0, p1, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 132
    iget-object v3, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    return-void
.end method

.method public bB(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 425
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    .line 429
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 430
    const/4 v0, 0x0

    .line 431
    iget-object v4, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 433
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;

    .line 434
    iget-object v6, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 438
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v6

    if-eq v6, v3, :cond_1

    .line 443
    iget-object v6, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 448
    new-instance v2, Lcom/kingroot/kinguser/bq;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bq;-><init>()V

    .line 449
    iget-object v6, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v6, v2, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 450
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    .line 454
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->Nx()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    .line 455
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/kingroot/kinguser/bq;->kS:Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v6

    .line 459
    iget-object v6, v6, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v6, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 463
    goto :goto_1

    .line 465
    :cond_2
    if-eqz v2, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Rz()V

    .line 468
    :cond_3
    monitor-exit v4

    move-object v0, v1

    .line 470
    goto :goto_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bC(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    .line 484
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 485
    iget-object v3, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v4

    .line 487
    iget-object v0, v4, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 488
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;

    .line 490
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    .line 495
    iget-object v1, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/bq;

    .line 500
    if-nez v1, :cond_3

    .line 502
    new-instance v1, Lcom/kingroot/kinguser/bq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bq;-><init>()V

    .line 503
    iget-object v6, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v6, v1, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 504
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    .line 508
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->Nx()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    .line 509
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/kingroot/kinguser/bq;->kS:Ljava/lang/String;

    .line 511
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_2
    :goto_2
    iget-object v0, v4, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 514
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 515
    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    goto :goto_2

    .line 524
    :cond_4
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/avu;->a(Lcom/kingroot/kinguser/br;)V

    .line 527
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Rz()V

    .line 528
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 530
    goto/16 :goto_0
.end method

.method public c(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 237
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 242
    const/4 v0, 0x0

    .line 243
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-eqz v0, :cond_1

    .line 252
    :try_start_1
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 256
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "M"

    iput-object v1, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    move v3, v2

    .line 262
    goto :goto_1

    .line 253
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_2

    .line 263
    :cond_2
    if-eqz v3, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Rz()V

    .line 266
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 306
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XX()Lcom/kingroot/kinguser/security/ProtectRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->j(Ljava/util/Set;)V

    .line 312
    iget-object v4, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 313
    const/4 v0, 0x0

    .line 314
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    if-eqz v0, :cond_1

    .line 323
    :try_start_1
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 327
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    const-string v1, "M"

    iput-object v1, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    move v3, v2

    .line 333
    goto :goto_1

    .line 324
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_2

    .line 334
    :cond_2
    if-eqz v3, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Rz()V

    .line 337
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getCloudCheckFailedAppsCache()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->aUf:Ljava/lang/Object;

    monitor-enter v1

    .line 713
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRiskType(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 570
    const/4 v1, 0x1

    .line 572
    iget-object v2, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 574
    monitor-exit v2

    .line 575
    if-nez v0, :cond_0

    .line 586
    :goto_0
    return v1

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 581
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 586
    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public m(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->aUf:Ljava/lang/Object;

    monitor-enter v1

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 682
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUh:Lcom/kingroot/kinguser/so;

    iget-object v2, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/so;->b(Ljava/lang/Object;)Z

    .line 683
    monitor-exit v1

    .line 684
    return-void

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->aUf:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 693
    iget-object v0, p0, Lcom/kingroot/kinguser/avu;->aUh:Lcom/kingroot/kinguser/so;

    iget-object v2, p0, Lcom/kingroot/kinguser/avu;->aUi:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/so;->b(Ljava/lang/Object;)Z

    .line 694
    monitor-exit v1

    .line 695
    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAppInfos(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/avu;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 544
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    iget-object v4, p0, Lcom/kingroot/kinguser/avu;->aUg:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 547
    if-eqz v0, :cond_1

    .line 550
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 553
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Ry()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 554
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 557
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu;->Rz()V

    .line 560
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

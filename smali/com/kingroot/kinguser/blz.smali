.class public Lcom/kingroot/kinguser/blz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bAV:Lcom/kingroot/kinguser/blz;


# instance fields
.field private final bAW:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingx/cloudsdk/aq;",
            ">;"
        }
    .end annotation
.end field

.field private final bAX:Ljava/lang/Object;

.field private final bAY:Ljava/lang/Object;

.field private bAZ:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/blz;->bAX:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/blz;->bAY:Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/blz;->bAZ:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/kingroot/kinguser/blz;->cN()V

    .line 80
    return-void
.end method

.method private static D()Z
    .locals 6

    .prologue
    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/bln;->afn()Lcom/kingroot/kinguser/bln;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bln;->afo()J

    move-result-wide v0

    .line 275
    const-wide/32 v4, 0x5265c00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->d(JJJ)Z

    move-result v0

    .line 277
    return v0
.end method

.method private a(Ljava/util/ArrayList;J)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/l;",
            ">;J)I"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 699
    if-nez p1, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v3

    .line 705
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/l;

    .line 706
    if-eqz v0, :cond_0

    .line 711
    const/16 v1, 0x8fc

    invoke-static {v0, v1, v5, v4}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingx/cloudsdk/l;ILjava/lang/String;Z)V

    .line 715
    new-instance v6, Lcom/kingx/cloudsdk/aq;

    invoke-direct {v6}, Lcom/kingx/cloudsdk/aq;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/kingx/cloudsdk/aq;->bAK:J

    iget v1, v0, Lcom/kingx/cloudsdk/l;->id:I

    iput v1, v6, Lcom/kingx/cloudsdk/aq;->aH:I

    iget v1, v0, Lcom/kingx/cloudsdk/l;->version:I

    iput v1, v6, Lcom/kingx/cloudsdk/aq;->versionCode:I

    iget-object v1, v0, Lcom/kingx/cloudsdk/l;->ba:Ljava/lang/String;

    iput-object v1, v6, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    iget v1, v0, Lcom/kingx/cloudsdk/l;->bb:I

    iput v1, v6, Lcom/kingx/cloudsdk/aq;->size:I

    iget-object v1, v0, Lcom/kingx/cloudsdk/l;->bc:Ljava/lang/String;

    iput-object v1, v6, Lcom/kingx/cloudsdk/aq;->xv:Ljava/lang/String;

    iget v1, v0, Lcom/kingx/cloudsdk/l;->bb:I

    iput v1, v6, Lcom/kingx/cloudsdk/aq;->size:I

    iput-wide p2, v6, Lcom/kingx/cloudsdk/aq;->bAL:J

    iget-object v1, v0, Lcom/kingx/cloudsdk/l;->aM:Ljava/lang/String;

    iput-object v1, v6, Lcom/kingx/cloudsdk/aq;->aM:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/kingx/cloudsdk/l;->bj:Z

    iput-boolean v1, v6, Lcom/kingx/cloudsdk/aq;->bj:Z

    iget-object v1, v0, Lcom/kingx/cloudsdk/l;->bi:Lcom/kingx/cloudsdk/j;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/kingx/cloudsdk/l;->bi:Lcom/kingx/cloudsdk/j;

    iget-object v1, v1, Lcom/kingx/cloudsdk/j;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/kingx/cloudsdk/l;->bi:Lcom/kingx/cloudsdk/j;

    iget-object v1, v1, Lcom/kingx/cloudsdk/j;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v8, "\n|\r\n"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    if-lez v8, :cond_3

    aget-object v8, v1, v4

    iput-object v8, v6, Lcom/kingx/cloudsdk/aq;->xA:Ljava/lang/String;

    :cond_3
    array-length v8, v1

    if-le v8, v3, :cond_4

    aget-object v1, v1, v3

    iput-object v1, v6, Lcom/kingx/cloudsdk/aq;->bAJ:Ljava/lang/String;

    :cond_4
    iget-boolean v1, v0, Lcom/kingx/cloudsdk/l;->be:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    iput v1, v6, Lcom/kingx/cloudsdk/aq;->bZ:I

    iget v0, v0, Lcom/kingx/cloudsdk/l;->bf:I

    if-nez v0, :cond_5

    iget v0, v6, Lcom/kingx/cloudsdk/aq;->xD:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Lcom/kingx/cloudsdk/aq;->xD:I

    :cond_5
    :goto_2
    move-object v0, v6

    .line 717
    :goto_3
    if-eqz v0, :cond_2

    .line 719
    iget v1, v0, Lcom/kingx/cloudsdk/aq;->aH:I

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/blz;->jL(I)Lcom/kingx/cloudsdk/aq;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_6

    .line 725
    iget v6, v0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    iget v8, v1, Lcom/kingx/cloudsdk/aq;->versionCode:I

    if-lt v6, v8, :cond_2

    .line 727
    iget v6, v0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    iget v8, v1, Lcom/kingx/cloudsdk/aq;->versionCode:I

    if-ne v6, v8, :cond_6

    .line 730
    iget v6, v1, Lcom/kingx/cloudsdk/aq;->bAI:I

    iput v6, v0, Lcom/kingx/cloudsdk/aq;->bAI:I

    .line 731
    new-instance v6, Lcom/kingroot/kinguser/bme;

    invoke-direct {v6}, Lcom/kingroot/kinguser/bme;-><init>()V

    .line 732
    iget-object v1, v1, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    iput-object v1, v6, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    .line 733
    invoke-direct {p0, v6, v0}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingroot/kinguser/bme;Lcom/kingx/cloudsdk/aq;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 735
    :cond_6
    invoke-static {}, Lcom/kingx/cloudsdk/aq;->afz()V

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getWorkingDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/modules/app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/kingx/cloudsdk/aq;->aH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    .line 747
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/blz;->b(Lcom/kingx/cloudsdk/aq;)V

    .line 748
    invoke-static {v0}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingx/cloudsdk/aq;)V

    move v2, v4

    .line 750
    goto/16 :goto_1

    .line 715
    :cond_7
    iget-object v1, v0, Lcom/kingx/cloudsdk/l;->bp:Lcom/kingx/cloudsdk/o;

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/kingx/cloudsdk/l;->aN:I

    if-nez v1, :cond_8

    iget v1, v6, Lcom/kingx/cloudsdk/aq;->xD:I

    or-int/lit8 v1, v1, 0x7

    iput v1, v6, Lcom/kingx/cloudsdk/aq;->xD:I

    :cond_8
    iget-object v1, v0, Lcom/kingx/cloudsdk/l;->bp:Lcom/kingx/cloudsdk/o;

    iget v1, v1, Lcom/kingx/cloudsdk/o;->bZ:I

    if-nez v1, :cond_9

    iput v4, v6, Lcom/kingx/cloudsdk/aq;->bZ:I

    goto :goto_2

    :cond_9
    iget-object v0, v0, Lcom/kingx/cloudsdk/l;->bp:Lcom/kingx/cloudsdk/o;

    iget v0, v0, Lcom/kingx/cloudsdk/o;->bZ:I

    if-ne v0, v3, :cond_a

    iput v3, v6, Lcom/kingx/cloudsdk/aq;->bZ:I

    goto/16 :goto_2

    :cond_a
    move-object v0, v5

    goto/16 :goto_3

    :cond_b
    move-object v0, v5

    goto/16 :goto_3

    :cond_c
    move v3, v2

    .line 753
    goto/16 :goto_0
.end method

.method private static a(Lcom/kingx/cloudsdk/aq;)V
    .locals 4

    .prologue
    .line 762
    if-nez p0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 767
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 768
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->xH:Ljava/lang/String;

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->vp:Ljava/lang/String;

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->bAN:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->bAO:Ljava/lang/String;

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->size:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->bAP:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingx/cloudsdk/aq;->xv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->bAQ:Ljava/lang/String;

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->bAI:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->bAR:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->sV:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingx/cloudsdk/aq;->xA:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->bAS:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingx/cloudsdk/aq;->bAJ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->sX:Ljava/lang/String;

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->bZ:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->sY:Ljava/lang/String;

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->xD:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->sZ:Ljava/lang/String;

    iget-wide v2, p0, Lcom/kingx/cloudsdk/aq;->bAK:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->ta:Ljava/lang/String;

    iget-wide v2, p0, Lcom/kingx/cloudsdk/aq;->bAL:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->bAT:Ljava/lang/String;

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->bAM:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->bAU:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingx/cloudsdk/aq;->aM:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v1, Lcom/kingx/cloudsdk/aq$a;->ff:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/kingx/cloudsdk/aq;->bj:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getWorkingDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/modules/appconf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 791
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 794
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 798
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->l([B)[B

    move-result-object v1

    .line 799
    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bmu;->b([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    const/16 v1, 0x3ed

    const-string v2, "\u5b58\u50a8\u63d2\u4ef6\u5355\u5f02\u5e38_exception:"

    invoke-static {v1, v2, v0}, Lcloudsdk/KError;->set(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bme;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bme;

    .line 814
    new-instance v2, Lcom/kingx/cloudsdk/g;

    invoke-direct {v2}, Lcom/kingx/cloudsdk/g;-><init>()V

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/kingroot/kinguser/bme;->bBq:I

    iput v3, v2, Lcom/kingx/cloudsdk/g;->id:I

    const/16 v3, 0xa

    iput v3, v2, Lcom/kingx/cloudsdk/g;->level:I

    iget-object v3, v0, Lcom/kingroot/kinguser/bme;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingx/cloudsdk/g;->aM:Ljava/lang/String;

    iget v0, v0, Lcom/kingroot/kinguser/bme;->versionCode:I

    iput v0, v2, Lcom/kingx/cloudsdk/g;->version:I

    .line 816
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 818
    :cond_1
    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/bme;)Z
    .locals 1

    .prologue
    .line 441
    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->f(Lcom/kingroot/kinguser/bme;)I

    move-result v0

    .line 442
    if-nez v0, :cond_0

    .line 443
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/bme;Lcom/kingx/cloudsdk/aq;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    .line 288
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    :goto_0
    return v1

    .line 295
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingroot/kinguser/bme;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    iget v3, p2, Lcom/kingx/cloudsdk/aq;->versionCode:I

    iget v4, p1, Lcom/kingroot/kinguser/bme;->versionCode:I

    if-ge v3, v4, :cond_1

    :goto_1
    move v1, v0

    .line 316
    goto :goto_0

    .line 302
    :cond_1
    iget v3, p2, Lcom/kingx/cloudsdk/aq;->versionCode:I

    iget v4, p1, Lcom/kingroot/kinguser/bme;->versionCode:I

    if-ne v3, v4, :cond_2

    .line 304
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 305
    iget-object v3, p2, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    iput-object v2, p1, Lcom/kingroot/kinguser/bme;->xu:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static afA()Lcom/kingroot/kinguser/blz;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/kingroot/kinguser/blz;->bAV:Lcom/kingroot/kinguser/blz;

    if-nez v0, :cond_1

    .line 84
    const-class v1, Lcom/kingroot/kinguser/blz;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/blz;->bAV:Lcom/kingroot/kinguser/blz;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/kingroot/kinguser/blz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/blz;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/blz;->bAV:Lcom/kingroot/kinguser/blz;

    .line 88
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/blz;->bAV:Lcom/kingroot/kinguser/blz;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private afC()I
    .locals 4

    .prologue
    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/blz;->x(Ljava/util/ArrayList;)I

    move-result v0

    .line 602
    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return v0

    .line 606
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    const/4 v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bln;->afn()Lcom/kingroot/kinguser/bln;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bln;->afp()J

    move-result-wide v2

    .line 611
    invoke-direct {p0, v1, v2, v3}, Lcom/kingroot/kinguser/blz;->a(Ljava/util/ArrayList;J)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Lcom/kingx/cloudsdk/aq;
    .locals 4

    .prologue
    .line 950
    new-instance v1, Lcom/kingx/cloudsdk/aq;

    invoke-direct {v1}, Lcom/kingx/cloudsdk/aq;-><init>()V

    .line 951
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/blz;->c(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_0

    .line 955
    :try_start_0
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->xH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kingx/cloudsdk/aq;->aH:I

    .line 956
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->vp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kingx/cloudsdk/aq;->versionCode:I

    .line 957
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->bAN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    .line 958
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->bAO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kingx/cloudsdk/aq;->size:I

    .line 959
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->bAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingx/cloudsdk/aq;->xv:Ljava/lang/String;

    .line 960
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->bAQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kingx/cloudsdk/aq;->bAI:I

    .line 961
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->bAR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    .line 962
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->sV:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingx/cloudsdk/aq;->xA:Ljava/lang/String;

    .line 963
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->bAS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingx/cloudsdk/aq;->bAJ:Ljava/lang/String;

    .line 964
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->sX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kingx/cloudsdk/aq;->bZ:I

    .line 965
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->sY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kingx/cloudsdk/aq;->xD:I

    .line 966
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->sZ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingx/cloudsdk/aq;->bAK:J

    .line 967
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->ta:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingx/cloudsdk/aq;->bAL:J

    .line 968
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->bAT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kingx/cloudsdk/aq;->bAM:I

    .line 969
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->bAU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingx/cloudsdk/aq;->aM:Ljava/lang/String;

    .line 970
    sget-object v2, Lcom/kingx/cloudsdk/aq$a;->ff:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/kingx/cloudsdk/aq;->bj:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :cond_0
    :goto_0
    return-object v1

    .line 971
    :catch_0
    move-exception v0

    .line 972
    const/16 v2, 0x3ee

    const-string v3, "\u83b7\u53d6\u63d2\u4ef6\u5355\u6570\u636e\u5f02\u5e38_exception:"

    invoke-static {v2, v3, v0}, Lcloudsdk/KError;->set(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/kingx/cloudsdk/aq;)V
    .locals 3

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1073
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    iget v2, p1, Lcom/kingx/cloudsdk/aq;->aH:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1074
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x3ee

    .line 987
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/blt$a;->mg(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 995
    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->S([B)[B

    move-result-object v0

    .line 996
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 997
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 1000
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1004
    :goto_0
    return-object v0

    .line 990
    :catch_0
    move-exception v0

    .line 991
    const-string v2, "\u83b7\u53d6\u63d2\u4ef6\u5355\u5185\u5bb9\u5f02\u5e38_exception:"

    invoke-static {v3, v2, v0}, Lcloudsdk/KError;->set(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 992
    goto :goto_0

    .line 1001
    :catch_1
    move-exception v0

    .line 1002
    const-string v2, "\u6784\u9020\u63d2\u4ef6\u5355\u6570\u636e\u5f02\u5e38_exception:"

    invoke-static {v3, v2, v0}, Lcloudsdk/KError;->set(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private c(IZI)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    .line 419
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/blz;->x(IZ)Z

    move-result v0

    .line 420
    add-int/lit8 p3, p3, -0x1

    .line 421
    if-eqz v0, :cond_1

    .line 423
    const/4 v0, 0x1

    move p3, v1

    .line 429
    :goto_0
    if-nez p3, :cond_0

    .line 430
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/blz;->jL(I)Lcom/kingx/cloudsdk/aq;

    move-result-object v1

    .line 431
    invoke-static {v1}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingx/cloudsdk/aq;)V

    .line 432
    return v0

    :cond_1
    move v0, v1

    .line 427
    goto :goto_0
.end method

.method private cN()V
    .locals 3

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blz;->afD()Ljava/util/ArrayList;

    move-result-object v0

    .line 909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/aq;

    .line 911
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/blz;->b(Lcom/kingx/cloudsdk/aq;)V

    goto :goto_0

    .line 914
    :cond_0
    return-void
.end method

.method private static g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;
    .locals 2

    .prologue
    .line 1086
    new-instance v0, Lcom/kingroot/kinguser/bmh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/kingroot/kinguser/bmh;-><init>(IILjava/lang/String;Lcloudsdk/IModule;)V

    .line 1089
    return-object v0
.end method

.method private jL(I)Lcom/kingx/cloudsdk/aq;
    .locals 2

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1060
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/aq;

    .line 1061
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private v(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/aq;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 497
    .line 498
    iget-object v3, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    monitor-enter v3

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v2, v1

    .line 500
    :goto_0
    if-ge v2, v4, :cond_2

    .line 501
    iget-object v0, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 502
    iget-object v0, p0, Lcom/kingroot/kinguser/blz;->bAW:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/aq;

    .line 504
    const/16 v6, 0x1fa5

    if-ne v5, v6, :cond_0

    iget v5, v0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    sget v6, Lcom/kingroot/kinguser/bmg;->vC:I

    if-le v5, v6, :cond_1

    .line 506
    :cond_0
    new-instance v5, Lcom/kingroot/kinguser/bme;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bme;-><init>()V

    .line 510
    iget-object v6, v0, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    iput-object v6, v5, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    .line 513
    iget v6, v0, Lcom/kingx/cloudsdk/aq;->bZ:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 515
    invoke-direct {p0, v5, v0}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingroot/kinguser/bme;Lcom/kingx/cloudsdk/aq;)Z

    move-result v5

    .line 520
    if-nez v5, :cond_1

    .line 521
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 524
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 529
    :goto_1
    return v0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 529
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private w(Ljava/util/ArrayList;)Lcloudsdk/ILoadResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/aq;",
            ">;)",
            "Lcloudsdk/ILoadResult;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 540
    .line 542
    const-string v0, "\u63d2\u4ef6\u4e0b\u8f7d\u6210\u529f"

    .line 543
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v0

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/aq;

    .line 544
    iget v8, v0, Lcom/kingx/cloudsdk/aq;->aH:I

    .line 545
    iget v9, v0, Lcom/kingx/cloudsdk/aq;->aH:I

    iget v0, v0, Lcom/kingx/cloudsdk/aq;->bAI:I

    const/4 v9, 0x3

    if-le v0, v9, :cond_0

    move v0, v5

    :goto_1
    if-eqz v0, :cond_1

    .line 550
    const/4 v1, -0x4

    .line 551
    const-string v0, "\u6807\u5fd7\u65f6\u95f4\u5185\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u51fa\u9650\u5236"

    move v2, v1

    move v4, v5

    move-object v1, v0

    .line 552
    goto :goto_0

    :cond_0
    move v0, v3

    .line 545
    goto :goto_1

    .line 555
    :cond_1
    invoke-direct {p0, v8, v3, v5}, Lcom/kingroot/kinguser/blz;->c(IZI)Z

    move-result v0

    .line 556
    if-nez v0, :cond_3

    .line 561
    const-string v0, "\u63d2\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    move v1, v6

    move v2, v6

    :goto_2
    move v4, v2

    move v2, v1

    move-object v1, v0

    .line 563
    goto :goto_0

    .line 565
    :cond_2
    invoke-static {v4, v2, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2
.end method

.method private x(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/l;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 624
    iget-object v3, p0, Lcom/kingroot/kinguser/blz;->bAX:Ljava/lang/Object;

    monitor-enter v3

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blz;->bAZ:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v0

    if-ne v1, v0, :cond_0

    .line 630
    const/16 v0, 0x3f9

    monitor-exit v3

    .line 689
    :goto_0
    return v0

    .line 634
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 635
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/blz;->y(Ljava/util/ArrayList;)V

    .line 638
    new-instance v4, Lcom/kingx/cloudsdk/d;

    invoke-direct {v4}, Lcom/kingx/cloudsdk/d;-><init>()V

    .line 639
    invoke-static {}, Lcom/kingroot/kinguser/blo;->afs()I

    move-result v5

    iput v5, v4, Lcom/kingx/cloudsdk/d;->aC:I

    .line 640
    invoke-static {}, Lcom/kingroot/kinguser/blo;->aft()I

    move-result v5

    iput v5, v4, Lcom/kingx/cloudsdk/d;->aD:I

    .line 641
    iput-object v0, v4, Lcom/kingx/cloudsdk/d;->aE:Ljava/util/ArrayList;

    .line 642
    invoke-static {}, Lcom/kingroot/kinguser/bln;->afn()Lcom/kingroot/kinguser/bln;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bln;->afp()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/kingx/cloudsdk/d;->aF:J

    .line 645
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 646
    iget-object v5, p0, Lcom/kingroot/kinguser/blz;->bAZ:Landroid/content/Context;

    invoke-static {v5, v4, v0}, Lcom/kingroot/kinguser/bls;->a(Landroid/content/Context;Lcom/kingx/cloudsdk/d;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v4

    .line 647
    if-eqz v4, :cond_1

    .line 649
    const/4 v0, -0x7

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 655
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/n;

    .line 656
    if-nez v0, :cond_2

    .line 658
    const/4 v0, -0x8

    monitor-exit v3

    goto :goto_0

    .line 662
    :cond_2
    iget v4, v0, Lcom/kingx/cloudsdk/n;->bG:I

    if-eqz v4, :cond_3

    .line 664
    const/4 v2, 0x0

    const/16 v4, 0x8fe

    iget v0, v0, Lcom/kingx/cloudsdk/n;->bG:I

    .line 666
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 664
    invoke-static {v2, v4, v0, v5}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingx/cloudsdk/l;ILjava/lang/String;Z)V

    .line 669
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 673
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 674
    invoke-static {}, Lcom/kingroot/kinguser/bln;->afn()Lcom/kingroot/kinguser/bln;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/kingroot/kinguser/bln;->b(J)V

    .line 678
    invoke-static {}, Lcom/kingroot/kinguser/bln;->afn()Lcom/kingroot/kinguser/bln;

    move-result-object v1

    iget-wide v4, v0, Lcom/kingx/cloudsdk/n;->bO:J

    invoke-virtual {v1, v4, v5}, Lcom/kingroot/kinguser/bln;->c(J)V

    .line 680
    iget-object v1, v0, Lcom/kingx/cloudsdk/n;->bD:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/kingx/cloudsdk/n;->bD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 682
    :cond_4
    const/4 v0, 0x1

    monitor-exit v3

    goto :goto_0

    .line 685
    :cond_5
    iget-object v0, v0, Lcom/kingx/cloudsdk/n;->bD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/l;

    .line 687
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 689
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto/16 :goto_0
.end method

.method private x(IZ)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    iget-object v4, p0, Lcom/kingroot/kinguser/blz;->bAY:Ljava/lang/Object;

    monitor-enter v4

    .line 101
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/blz;->jL(I)Lcom/kingx/cloudsdk/aq;

    move-result-object v5

    .line 104
    if-nez v5, :cond_0

    .line 106
    monitor-exit v4

    .line 161
    :goto_0
    return v0

    .line 109
    :cond_0
    iget v2, v5, Lcom/kingx/cloudsdk/aq;->xD:I

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v3

    if-nez p2, :cond_1

    if-eqz v3, :cond_1

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    :cond_1
    :goto_2
    if-nez v1, :cond_4

    .line 111
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    move v2, v0

    .line 109
    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2

    .line 114
    :cond_4
    :try_start_1
    new-instance v6, Lcom/kingroot/kinguser/bly;

    invoke-direct {v6, v5}, Lcom/kingroot/kinguser/bly;-><init>(Lcom/kingx/cloudsdk/aq;)V

    .line 115
    new-instance v3, Lcom/kingroot/kinguser/blx;

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v6, v1}, Lcom/kingroot/kinguser/blx;-><init>(Lcom/kingroot/kinguser/bly;Landroid/content/Context;)V

    .line 117
    const-string v2, ""

    .line 119
    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v1, v7}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingx/cloudsdk/aq;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    invoke-virtual {v3}, Lcom/kingroot/kinguser/blx;->afy()Z

    move-result v1

    .line 124
    iget-object v7, v6, Lcom/kingroot/kinguser/bly;->bAE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/kingroot/kinguser/blx;->mi(Ljava/lang/String;)Z

    move-result v3

    .line 126
    if-nez v3, :cond_6

    .line 127
    const/4 v3, -0x2

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "verify fail."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move v2, v3

    .line 143
    :goto_3
    const/4 v3, 0x1

    const/4 v7, 0x0

    :try_start_3
    invoke-static {v5, v0, v3, v7, v1}, Lcom/kingroot/kinguser/bmu;->a(Lcom/kingx/cloudsdk/aq;ZIZLjava/lang/String;)V

    .line 145
    if-nez v2, :cond_7

    .line 146
    const/4 v1, 0x0

    iput v1, v5, Lcom/kingx/cloudsdk/aq;->bAI:I

    .line 155
    :cond_5
    :goto_4
    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/blz;->b(Lcom/kingx/cloudsdk/aq;)V

    .line 161
    monitor-exit v4

    goto :goto_0

    :cond_6
    move-object v8, v2

    move v2, v0

    move v0, v1

    move-object v1, v8

    .line 133
    goto :goto_3

    .line 137
    :catch_0
    move-exception v1

    .line 139
    const/4 v3, -0x3

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "down_e_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v3

    goto :goto_3

    .line 148
    :cond_7
    iget v1, v5, Lcom/kingx/cloudsdk/aq;->bAI:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lcom/kingx/cloudsdk/aq;->bAI:I

    .line 149
    new-instance v1, Ljava/io/File;

    iget-object v2, v6, Lcom/kingroot/kinguser/bly;->bAE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method private y(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1013
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/CloudSdk;->getWorkingDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/modules/app"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1016
    new-instance v3, Lcom/kingroot/kinguser/bme;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bme;-><init>()V

    .line 1017
    iput-object v0, v3, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    .line 1018
    invoke-static {v3}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingroot/kinguser/bme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1025
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/kingroot/kinguser/blz;->a(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 1026
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bme;Z)Lcloudsdk/ILoadResult;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 188
    if-nez p1, :cond_0

    .line 190
    const/4 v0, -0x5

    const-string v1, "\u63d2\u4ef6\u4fe1\u606f\u5f02\u5e38"

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget v4, p1, Lcom/kingroot/kinguser/bme;->bBq:I

    .line 195
    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/blz;->jL(I)Lcom/kingx/cloudsdk/aq;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/blz;->D()Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v1

    .line 200
    :goto_1
    if-eqz v3, :cond_c

    .line 201
    invoke-direct {p0}, Lcom/kingroot/kinguser/blz;->afC()I

    move-result v0

    .line 205
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    .line 208
    const-string v1, "\u62c9\u53d6\u751f\u6548\u5355\u5931\u8d25"

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 196
    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_1

    .line 212
    :cond_3
    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/blz;->jL(I)Lcom/kingx/cloudsdk/aq;

    move-result-object v0

    .line 213
    if-nez v0, :cond_4

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/kingroot/kinguser/bme;->bAL:J

    .line 216
    const/16 v0, -0x9

    const-string v1, "\u62c9\u53d6\u751f\u6548\u5355\u5931\u8d25"

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_4
    iget-wide v6, v0, Lcom/kingx/cloudsdk/aq;->bAL:J

    iput-wide v6, p1, Lcom/kingroot/kinguser/bme;->bAL:J

    .line 223
    const/16 v3, 0x1fa5

    if-ne v4, v3, :cond_7

    iget v3, v0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    sget v5, Lcom/kingroot/kinguser/bmg;->vC:I

    if-gt v3, v5, :cond_7

    .line 227
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 228
    :goto_3
    if-eqz v0, :cond_6

    .line 229
    const-string v0, "\u9700\u8981\u91ca\u653e\u5185\u7f6e\u63d2\u4ef6"

    invoke-static {v2, v8, v0}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_5
    invoke-static {p1}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingroot/kinguser/bme;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/kingroot/kinguser/bmg;->vC:I

    iget v3, p1, Lcom/kingroot/kinguser/bme;->versionCode:I

    if-gt v0, v3, :cond_b

    move v0, v1

    goto :goto_3

    .line 231
    :cond_6
    const-string v0, "\u63d2\u4ef6\u65e0\u66f4\u65b0\u65e0\u9700\u4e0b\u8f7d"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingroot/kinguser/bme;Lcom/kingx/cloudsdk/aq;)Z

    move-result v3

    .line 237
    if-eqz v3, :cond_8

    .line 239
    const-string v0, "\u63d2\u4ef6\u65e0\u66f4\u65b0\u65e0\u9700\u4e0b\u8f7d"

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_8
    invoke-direct {p0, v4, p2, v8}, Lcom/kingroot/kinguser/blz;->c(IZI)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p1}, Lcom/kingroot/kinguser/blz;->a(Lcom/kingroot/kinguser/bme;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, v0, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    iput-object v0, p1, Lcom/kingroot/kinguser/bme;->xu:Ljava/lang/String;

    const-string v0, "\u63d2\u4ef6\u4e0b\u8f7d\u6210\u529f"

    invoke-static {v1, v1, v0}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const/4 v0, -0x6

    const-string v1, "\u89e3\u6790\u63d2\u4ef6\u5185\u90e8\u4fe1\u606f\u5f02\u5e38"

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const/4 v0, -0x3

    const-string v1, "\u63d2\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method public final afB()Lcloudsdk/ILoadResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 457
    invoke-static {}, Lcom/kingroot/kinguser/blz;->D()Z

    move-result v0

    .line 458
    if-nez v0, :cond_0

    .line 460
    const/4 v0, -0x2

    const-string v1, "\u8fd8\u6ca1\u5230\u62c9\u5355\u65f6\u95f4"

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/blz;->afC()I

    move-result v0

    .line 467
    if-eqz v0, :cond_2

    .line 468
    if-ne v0, v2, :cond_1

    .line 469
    const-string v1, "\u62c9\u53d6\u751f\u6548\u4f46\u6210\u529f\u4f46\u4e0d\u9700\u8981\u5904\u7406"

    invoke-static {v3, v0, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_1
    const-string v1, "\u62c9\u53d6\u751f\u6548\u5355\u5931\u8d25"

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/blz;->v(Ljava/util/ArrayList;)Z

    move-result v1

    .line 479
    if-nez v1, :cond_3

    .line 481
    const-string v0, "\u62c9\u53d6\u751f\u6548\u4f46\u6210\u529f\u4f46\u4e0d\u9700\u8981\u5904\u7406"

    invoke-static {v3, v2, v0}, Lcom/kingroot/kinguser/blz;->g(IILjava/lang/String;)Lcom/kingroot/kinguser/bmh;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_3
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/blz;->w(Ljava/util/ArrayList;)Lcloudsdk/ILoadResult;

    move-result-object v0

    goto :goto_0
.end method

.method public final afD()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/aq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 921
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcloudsdk/CloudSdk;->getWorkingDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/modules/appconf"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 925
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 929
    if-nez v3, :cond_1

    .line 940
    :cond_0
    return-object v0

    .line 932
    :cond_1
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 933
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 934
    invoke-static {v5, v2}, Lcom/kingroot/kinguser/blz;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/kingx/cloudsdk/aq;

    move-result-object v5

    .line 935
    if-eqz v5, :cond_2

    .line 936
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

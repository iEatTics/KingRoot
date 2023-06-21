.class public Lcom/kingroot/kinguser/agj$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public amP:Ljava/lang/String;

.field public state:I

.field public time:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/kingroot/kinguser/agj$b;->amP:Ljava/lang/String;

    .line 140
    iput-wide p2, p0, Lcom/kingroot/kinguser/agj$b;->time:J

    .line 141
    iput p4, p0, Lcom/kingroot/kinguser/agj$b;->state:I

    .line 142
    return-void
.end method

.method public static ae(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agj$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    const/4 v0, 0x5

    .line 126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    .line 128
    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_1

    .line 135
    :cond_0
    return-object v3

    .line 131
    :cond_1
    iget-object v1, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    iget-wide v6, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    iget v0, v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    invoke-static {v1, v6, v7, v0}, Lcom/kingroot/kinguser/agj$b;->c(Ljava/lang/String;JI)Lcom/kingroot/kinguser/agj$b;

    move-result-object v0

    .line 132
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 133
    goto :goto_0
.end method

.method public static c(Ljava/lang/String;JI)Lcom/kingroot/kinguser/agj$b;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/kingroot/kinguser/agj$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/agj$b;-><init>(Ljava/lang/String;JI)V

    return-object v0
.end method

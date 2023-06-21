.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z

.field static nf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public picurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public recommend:Ljava/lang/String;

.field public sign:I

.field public signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->lo:Z

    .line 145
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->recommend:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->sign:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->signature:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->recommend:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->nn(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->sign:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->kB(I)V

    .line 74
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->signature:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->no(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->E(Ljava/util/ArrayList;)V

    .line 76
    return-void
.end method


# virtual methods
.method public E(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :cond_0
    return-object v0

    .line 120
    :catch_0
    move-exception v1

    .line 122
    sget-boolean v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;

    .line 95
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->recommend:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->recommend:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->sign:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->sign:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->signature:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->signature:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public kB(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->sign:I

    .line 48
    return-void
.end method

.method public nn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->recommend:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public no(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->signature:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->nn(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->sign:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->kB(I)V

    .line 153
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->no(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->nf:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->nf:Ljava/util/ArrayList;

    .line 158
    const-string v0, ""

    .line 159
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->nf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->nf:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->E(Ljava/util/ArrayList;)V

    .line 163
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->recommend:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->recommend:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 133
    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->sign:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 134
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->signature:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->signature:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 142
    :cond_2
    return-void
.end method

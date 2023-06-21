.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z


# instance fields
.field public agree:I

.field public createtime:I

.field public disagree:I

.field public ispush:I

.field public updatetime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->lo:Z

    .line 150
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->createtime:I

    .line 23
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->agree:I

    .line 25
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->disagree:I

    .line 27
    sget-object v0, Lcom/kingroot/kinguser/bvn;->bQb:Lcom/kingroot/kinguser/bvn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvn;->value()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ispush:I

    .line 29
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->updatetime:I

    .line 83
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->createtime:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->kw(I)V

    .line 84
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->agree:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->kx(I)V

    .line 85
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->disagree:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ky(I)V

    .line 86
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ispush:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->kz(I)V

    .line 87
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->updatetime:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->kA(I)V

    .line 88
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :cond_0
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    .line 136
    sget-boolean v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;

    .line 108
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->createtime:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->createtime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->agree:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->agree:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->disagree:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->disagree:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ispush:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ispush:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->updatetime:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->updatetime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public kA(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->updatetime:I

    .line 79
    return-void
.end method

.method public kw(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->createtime:I

    .line 39
    return-void
.end method

.method public kx(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->agree:I

    .line 49
    return-void
.end method

.method public ky(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->disagree:I

    .line 59
    return-void
.end method

.method public kz(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ispush:I

    .line 69
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->createtime:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->kw(I)V

    .line 156
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->agree:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->kx(I)V

    .line 158
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->disagree:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ky(I)V

    .line 160
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ispush:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->kz(I)V

    .line 162
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->updatetime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->kA(I)V

    .line 164
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->createtime:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 144
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->agree:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 145
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->disagree:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 146
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ispush:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 147
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->updatetime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 148
    return-void
.end method

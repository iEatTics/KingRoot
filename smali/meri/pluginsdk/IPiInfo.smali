.class public Lmeri/pluginsdk/IPiInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmeri/pluginsdk/IPiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public bGx:I

.field public bWX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lmeri/pluginsdk/IPiInfo$1;

    invoke-direct {v0}, Lmeri/pluginsdk/IPiInfo$1;-><init>()V

    sput-object v0, Lmeri/pluginsdk/IPiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->a:I

    .line 20
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->b:I

    .line 23
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->c:I

    .line 26
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->d:I

    .line 29
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->e:I

    .line 32
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->f:I

    .line 35
    iput-boolean v2, p0, Lmeri/pluginsdk/IPiInfo;->g:Z

    .line 38
    iput-boolean v2, p0, Lmeri/pluginsdk/IPiInfo;->h:Z

    .line 41
    iput-boolean v2, p0, Lmeri/pluginsdk/IPiInfo;->i:Z

    .line 44
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->j:I

    .line 47
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->k:I

    .line 54
    iput v2, p0, Lmeri/pluginsdk/IPiInfo;->l:I

    .line 57
    iput-boolean v2, p0, Lmeri/pluginsdk/IPiInfo;->m:Z

    .line 60
    iput-object v1, p0, Lmeri/pluginsdk/IPiInfo;->n:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lmeri/pluginsdk/IPiInfo;->o:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lmeri/pluginsdk/IPiInfo;->p:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lmeri/pluginsdk/IPiInfo;->q:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lmeri/pluginsdk/IPiInfo;->r:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lmeri/pluginsdk/IPiInfo;->s:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lmeri/pluginsdk/IPiInfo;->t:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lmeri/pluginsdk/IPiInfo;->bWX:Ljava/util/ArrayList;

    .line 90
    iput v2, p0, Lmeri/pluginsdk/IPiInfo;->bGx:I

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->a:I

    .line 20
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->b:I

    .line 23
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->c:I

    .line 26
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->d:I

    .line 29
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->e:I

    .line 32
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->f:I

    .line 35
    iput-boolean v2, p0, Lmeri/pluginsdk/IPiInfo;->g:Z

    .line 38
    iput-boolean v2, p0, Lmeri/pluginsdk/IPiInfo;->h:Z

    .line 41
    iput-boolean v2, p0, Lmeri/pluginsdk/IPiInfo;->i:Z

    .line 44
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->j:I

    .line 47
    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->k:I

    .line 54
    iput v2, p0, Lmeri/pluginsdk/IPiInfo;->l:I

    .line 57
    iput-boolean v2, p0, Lmeri/pluginsdk/IPiInfo;->m:Z

    .line 60
    iput-object v3, p0, Lmeri/pluginsdk/IPiInfo;->n:Ljava/lang/String;

    .line 63
    iput-object v3, p0, Lmeri/pluginsdk/IPiInfo;->o:Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lmeri/pluginsdk/IPiInfo;->p:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lmeri/pluginsdk/IPiInfo;->q:Ljava/lang/String;

    .line 72
    iput-object v3, p0, Lmeri/pluginsdk/IPiInfo;->r:Ljava/lang/String;

    .line 75
    iput-object v3, p0, Lmeri/pluginsdk/IPiInfo;->s:Ljava/lang/String;

    .line 78
    iput-object v3, p0, Lmeri/pluginsdk/IPiInfo;->t:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lmeri/pluginsdk/IPiInfo;->bWX:Ljava/util/ArrayList;

    .line 90
    iput v2, p0, Lmeri/pluginsdk/IPiInfo;->bGx:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->a:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->b:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->c:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->d:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->e:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->f:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmeri/pluginsdk/IPiInfo;->g:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmeri/pluginsdk/IPiInfo;->h:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lmeri/pluginsdk/IPiInfo;->i:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->l:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lmeri/pluginsdk/IPiInfo;->m:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeri/pluginsdk/IPiInfo;->n:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeri/pluginsdk/IPiInfo;->o:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeri/pluginsdk/IPiInfo;->p:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeri/pluginsdk/IPiInfo;->q:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeri/pluginsdk/IPiInfo;->r:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeri/pluginsdk/IPiInfo;->s:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeri/pluginsdk/IPiInfo;->t:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lmeri/pluginsdk/IPiInfo;->bWX:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->j:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmeri/pluginsdk/IPiInfo;->k:I

    .line 180
    return-void

    :cond_0
    move v0, v2

    .line 162
    goto :goto_0

    :cond_1
    move v0, v2

    .line 163
    goto :goto_1

    :cond_2
    move v0, v2

    .line 164
    goto :goto_2

    :cond_3
    move v1, v2

    .line 166
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmeri/pluginsdk/IPiInfo$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lmeri/pluginsdk/IPiInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-boolean v0, p0, Lmeri/pluginsdk/IPiInfo;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget-boolean v0, p0, Lmeri/pluginsdk/IPiInfo;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 193
    iget-boolean v0, p0, Lmeri/pluginsdk/IPiInfo;->i:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-boolean v0, p0, Lmeri/pluginsdk/IPiInfo;->m:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 197
    iget-object v0, p0, Lmeri/pluginsdk/IPiInfo;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lmeri/pluginsdk/IPiInfo;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lmeri/pluginsdk/IPiInfo;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lmeri/pluginsdk/IPiInfo;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lmeri/pluginsdk/IPiInfo;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lmeri/pluginsdk/IPiInfo;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lmeri/pluginsdk/IPiInfo;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lmeri/pluginsdk/IPiInfo;->bWX:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 207
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lmeri/pluginsdk/IPiInfo;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 191
    goto :goto_0

    :cond_1
    move v0, v2

    .line 192
    goto :goto_1

    :cond_2
    move v0, v2

    .line 193
    goto :goto_2

    :cond_3
    move v1, v2

    .line 195
    goto :goto_3
.end method

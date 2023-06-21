.class public final Lcom/kingroot/kinguser/lj;
.super Lcom/kingroot/kinguser/jf;
.source "SourceFile"


# instance fields
.field private final ks:Ljava/lang/String;

.field private uR:Ljava/lang/String;

.field private final uS:I

.field private final uT:Ljava/lang/String;

.field private final uU:Ljava/lang/String;

.field private final uV:Ljava/lang/String;

.field private final uW:I

.field private uX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/kingroot/kinguser/hh;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1, v1, p2, p9}, Lcom/kingroot/kinguser/jf;-><init>(Ljava/lang/String;IILcom/kingroot/kinguser/hh;)V

    .line 40
    iput p3, p0, Lcom/kingroot/kinguser/lj;->uS:I

    .line 41
    iput-object p4, p0, Lcom/kingroot/kinguser/lj;->uT:Ljava/lang/String;

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/lj;->uS:I

    if-ne v0, v1, :cond_0

    .line 43
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "normal dex required entry method name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p5, p0, Lcom/kingroot/kinguser/lj;->uU:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/kingroot/kinguser/lj;->uV:Ljava/lang/String;

    .line 49
    iput p7, p0, Lcom/kingroot/kinguser/lj;->uW:I

    .line 50
    iput-object p8, p0, Lcom/kingroot/kinguser/lj;->ks:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p10}, Lcom/kingroot/kinguser/lj;->b(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic aZ()Lcom/kingroot/kinguser/hh;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/kingroot/kinguser/jf;->aZ()Lcom/kingroot/kinguser/hh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Z)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/jf;->b(Z)V

    return-void
.end method

.method public bridge synthetic ba()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/kingroot/kinguser/jf;->ba()Z

    move-result v0

    return v0
.end method

.method public ct()I
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Lcom/kingroot/kinguser/jf;->ct()I

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lj;->dU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bE()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const v0, 0x6000007

    .line 114
    :goto_0
    return v0

    .line 75
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/lj;->uT:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    const v0, 0x6000008

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/lj;->uT:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const v0, 0x6000006

    goto :goto_0

    .line 85
    :cond_2
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 86
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    const v0, 0x600000a

    goto :goto_0

    .line 92
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v2

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 93
    const-string v2, "/data/dalvik-cache/arm/sys"

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chown 1000:1000 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 0777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ls "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/ix$b;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    const v0, 0x6000011

    goto/16 :goto_0

    .line 104
    :cond_4
    new-instance v2, Lcom/kingroot/kinguser/jw;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/jw;-><init>(Lcom/kingroot/kinguser/it;)V

    .line 106
    :try_start_0
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/kingroot/kinguser/lj;->uT:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/jw;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/lj;->uX:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lj;->dU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bE()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/jw;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/lj;->uR:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_5
    const v0, 0x6000001

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const v0, 0x6000010

    goto/16 :goto_0
.end method

.method public d(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/jf;->d(Landroid/os/Parcel;)V

    .line 121
    iget v0, p0, Lcom/kingroot/kinguser/lj;->uS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lj;->dU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/lj;->uX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/lj;->uU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/lj;->uV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/kingroot/kinguser/lj;->uW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/lj;->ks:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/lj;->uR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/lj;->uX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/lj;->uU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/kingroot/kinguser/lj;->uW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/lj;->ks:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dT()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kingroot/kinguser/lj;->uS:I

    return v0
.end method

.method public dU()Z
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/lj;->uS:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dV()Ljava/util/List;
    .locals 2
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
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->uX:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->uU:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-object v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/kingroot/kinguser/jf;->getType()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/kingroot/kinguser/lj;->uS:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->uT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->uU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->uV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->ks:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->uT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->uU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/lj;->uW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/lj;->ks:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.class public Lcom/kingroot/kinguser/um;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field IG:Ljava/lang/String;

.field IH:Ljava/lang/String;

.field II:Ljava/lang/String;

.field IJ:Ljava/lang/String;

.field IK:Ljava/lang/String;

.field IL:Ljava/lang/String;

.field IM:Ljava/lang/String;

.field IN:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "xx"

    iput-object v0, p0, Lcom/kingroot/kinguser/um;->IJ:Ljava/lang/String;

    .line 36
    const-string v0, "(ILjava/lang/String;)Ljava/lang/Object;"

    iput-object v0, p0, Lcom/kingroot/kinguser/um;->IK:Ljava/lang/String;

    .line 40
    const-string v0, "/data"

    iput-object v0, p0, Lcom/kingroot/kinguser/um;->IL:Ljava/lang/String;

    .line 44
    const-string v0, "hello"

    iput-object v0, p0, Lcom/kingroot/kinguser/um;->IM:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/kingroot/kinguser/um;->IG:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/kingroot/kinguser/um;->IH:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/kingroot/kinguser/um;->II:Ljava/lang/String;

    .line 74
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iput-object p6, p0, Lcom/kingroot/kinguser/um;->IL:Ljava/lang/String;

    .line 78
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iput-object p4, p0, Lcom/kingroot/kinguser/um;->IJ:Ljava/lang/String;

    .line 82
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iput-object p5, p0, Lcom/kingroot/kinguser/um;->IM:Ljava/lang/String;

    .line 86
    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    iput-object p7, p0, Lcom/kingroot/kinguser/um;->pkgName:Ljava/lang/String;

    .line 90
    :cond_3
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    iput-object p8, p0, Lcom/kingroot/kinguser/um;->version:Ljava/lang/String;

    .line 94
    :cond_4
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    iput-object p9, p0, Lcom/kingroot/kinguser/um;->IN:Ljava/lang/String;

    .line 97
    :cond_5
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/um;->IG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/um;->IH:Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/um;->II:Ljava/lang/String;

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/um;->IJ:Ljava/lang/String;

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/um;->IK:Ljava/lang/String;

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/um;->IM:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

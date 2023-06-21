.class public Lcom/kingroot/kinguser/aqc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aKV:Ljava/lang/String;

.field public aKW:Ljava/lang/String;

.field public aKX:Ljava/lang/String;

.field public aKY:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public aKZ:Lcom/kingroot/kinguser/aqb;

.field public aLa:Landroid/graphics/drawable/Drawable;

.field public akK:Landroid/graphics/drawable/Drawable;

.field public akd:Z

.field public description:Ljava/lang/String;

.field public gw:I

.field public name:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aqc;->akd:Z

    .line 64
    iput-object v1, p0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/aqc;->gw:I

    .line 69
    iput-object v1, p0, Lcom/kingroot/kinguser/aqc;->aLa:Landroid/graphics/drawable/Drawable;

    .line 71
    return-void
.end method

.method public static Mz()Lcom/kingroot/kinguser/aqc;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/kingroot/kinguser/aqc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqc;-><init>()V

    .line 125
    const/4 v1, 0x5

    iput v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    .line 126
    const-string v1, "header"

    iput-object v1, v0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    .line 127
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;Ljava/lang/String;I)Lcom/kingroot/kinguser/aqc;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/kingroot/kinguser/aqc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqc;-><init>()V

    .line 113
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    .line 114
    iput-object p0, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    .line 115
    iput-object p1, v0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    .line 116
    iput-object p2, v0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    .line 117
    iput-object p3, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    .line 118
    iput-object p4, v0, Lcom/kingroot/kinguser/aqc;->aKY:Ljava/lang/String;

    .line 119
    iput p5, v0, Lcom/kingroot/kinguser/aqc;->gw:I

    .line 120
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqj;)Lcom/kingroot/kinguser/aqc;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/kingroot/kinguser/aqc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqc;-><init>()V

    .line 132
    const/4 v1, 0x6

    iput v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    .line 133
    iput-object p0, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    .line 134
    iput-object p1, v0, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    .line 135
    iput-object p2, v0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    .line 136
    invoke-virtual {p3}, Lcom/kingroot/kinguser/aqj;->MO()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/aqc;->aLa:Landroid/graphics/drawable/Drawable;

    .line 137
    iput-object p3, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    .line 138
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/kingroot/kinguser/aqc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqc;-><init>()V

    .line 91
    const/4 v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    .line 92
    iput-object p0, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    .line 93
    iput-object p1, v0, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    .line 94
    iput-object p2, v0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    .line 95
    iput-object p3, v0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    .line 96
    iput-object p4, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    .line 97
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;Z)Lcom/kingroot/kinguser/aqc;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/kingroot/kinguser/aqc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqc;-><init>()V

    .line 75
    if-eqz p5, :cond_0

    .line 76
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    .line 80
    :goto_0
    iput-object p0, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    .line 81
    iput-object p1, v0, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    .line 82
    iput-object p2, v0, Lcom/kingroot/kinguser/aqc;->aKX:Ljava/lang/String;

    .line 83
    iput-object p3, v0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    .line 84
    iput-object p4, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    .line 85
    return-object v0

    .line 78
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/aqc;Lcom/kingroot/kinguser/aqc;)Z
    .locals 2

    .prologue
    .line 142
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/kingroot/kinguser/aqc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqc;-><init>()V

    .line 102
    const/4 v1, 0x4

    iput v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    .line 103
    iput-object p0, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    .line 104
    iput-object p1, v0, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    .line 105
    iput-object p2, v0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    .line 106
    iput-object p3, v0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    .line 107
    iput-object p4, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    .line 108
    return-object v0
.end method


# virtual methods
.method public e(Lcom/kingroot/kinguser/aqc;)V
    .locals 1

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/aqc;->a(Lcom/kingroot/kinguser/aqc;Lcom/kingroot/kinguser/aqc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    .line 158
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    .line 162
    :cond_2
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    .line 166
    :cond_3
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKX:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKX:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/aqc;->aKX:Ljava/lang/String;

    .line 170
    :cond_4
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    .line 174
    :cond_5
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKY:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, p1, Lcom/kingroot/kinguser/aqc;->aKY:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/aqc;->aKY:Ljava/lang/String;

    .line 178
    :cond_6
    iget v0, p1, Lcom/kingroot/kinguser/aqc;->gw:I

    iput v0, p0, Lcom/kingroot/kinguser/aqc;->gw:I

    goto :goto_0
.end method

.class public Lcom/kingroot/kinguser/agd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final akI:Lcom/kingroot/kinguser/ala$a;

.field final akJ:I

.field final akK:Landroid/graphics/drawable/Drawable;

.field public akL:Z

.field public akM:Ljava/lang/String;

.field public akN:Z

.field public akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field public final id:I

.field public final name:Ljava/lang/String;

.field public status:I

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;ILcom/kingroot/kinguser/ala$a;ZILandroid/graphics/drawable/Drawable;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Lcom/kingroot/kinguser/agd$a;->type:I

    .line 156
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/kingroot/kinguser/agd$a;->name:Ljava/lang/String;

    .line 157
    iput p3, p0, Lcom/kingroot/kinguser/agd$a;->id:I

    .line 158
    iput-boolean p5, p0, Lcom/kingroot/kinguser/agd$a;->akL:Z

    .line 159
    iput-object p4, p0, Lcom/kingroot/kinguser/agd$a;->akI:Lcom/kingroot/kinguser/ala$a;

    .line 160
    iput p6, p0, Lcom/kingroot/kinguser/agd$a;->akJ:I

    .line 161
    iput-object p7, p0, Lcom/kingroot/kinguser/agd$a;->akK:Landroid/graphics/drawable/Drawable;

    .line 162
    if-eqz p8, :cond_1

    .line 163
    iput-object p8, p0, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 165
    :cond_1
    iput-boolean p9, p0, Lcom/kingroot/kinguser/agd$a;->akN:Z

    .line 166
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/ala$a;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)Lcom/kingroot/kinguser/agd$a;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 173
    new-instance v0, Lcom/kingroot/kinguser/agd$a;

    const/4 v1, 0x1

    move-object v2, p1

    move-object v4, p0

    move v5, p3

    move v6, v3

    move-object v7, p2

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/agd$a;-><init>(ILjava/lang/String;ILcom/kingroot/kinguser/ala$a;ZILandroid/graphics/drawable/Drawable;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 169
    new-instance v0, Lcom/kingroot/kinguser/agd$a;

    move-object v2, p0

    move v3, p1

    move v5, v1

    move v6, p2

    move-object v7, v4

    move-object v8, v4

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/agd$a;-><init>(ILjava/lang/String;ILcom/kingroot/kinguser/ala$a;ZILandroid/graphics/drawable/Drawable;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)V

    return-object v0
.end method

.method public static fq(Ljava/lang/String;)Lcom/kingroot/kinguser/agd$a;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 177
    new-instance v0, Lcom/kingroot/kinguser/agd$a;

    const/4 v1, 0x2

    move-object v2, p0

    move v5, v3

    move v6, v3

    move-object v7, v4

    move-object v8, v4

    move v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/agd$a;-><init>(ILjava/lang/String;ILcom/kingroot/kinguser/ala$a;ZILandroid/graphics/drawable/Drawable;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)V

    return-object v0
.end method

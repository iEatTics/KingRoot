.class public Lcom/kingroot/kinguser/bjr;
.super Lcom/kingroot/kinguser/yo;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/afe$a;
.implements Lcom/kingroot/kinguser/bjj$b;
.implements Lcom/kingroot/kinguser/bjj$c;
.implements Lcom/kingroot/kinguser/bjj$d;
.implements Lcom/kingroot/kinguser/bjj$e;
.implements Lcom/kingroot/kinguser/blj$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjr$a;
    }
.end annotation


# instance fields
.field private aBS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private aBT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private acx:Landroid/widget/ImageView;

.field private acy:Landroid/widget/TextView;

.field private acz:Landroid/view/animation/Animation;

.field private ahB:Lcom/kingroot/kinguser/adi;

.field private ahC:Landroid/widget/ImageView;

.field private ahF:Lcom/kingroot/kinguser/bed;

.field private baA:Landroid/widget/TextView;

.field private bxO:Z

.field private bxT:I

.field private byb:Landroid/content/SharedPreferences;

.field private byc:Z

.field private byd:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bye:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation
.end field

.field private final byf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation
.end field

.field private byg:Lcom/kingroot/kinguser/bid;

.field private byh:Lcom/kingroot/kinguser/bif;

.field private byi:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

.field private byj:I

.field private byk:I

.field private byl:Lcom/kingroot/kinguser/bed;

.field private bym:Lcom/kingroot/kinguser/bed;

.field private byn:Lcom/kingroot/kinguser/bed;

.field private byo:Lcom/kingroot/kinguser/bed;

.field private byp:Lcom/kingroot/kinguser/bed;

.field private byq:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 197
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yo;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->bye:Ljava/util/HashSet;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byf:Ljava/util/Set;

    .line 183
    iput-object v1, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    .line 184
    iput-object v1, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    .line 191
    iput v5, p0, Lcom/kingroot/kinguser/bjr;->byj:I

    .line 194
    iput-boolean v5, p0, Lcom/kingroot/kinguser/bjr;->bxO:Z

    .line 793
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjr$17;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjr$17;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byl:Lcom/kingroot/kinguser/bed;

    .line 806
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjr$18;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjr$18;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahF:Lcom/kingroot/kinguser/bed;

    .line 842
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjr$19;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjr$19;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->bym:Lcom/kingroot/kinguser/bed;

    .line 918
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjr$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjr$2;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byn:Lcom/kingroot/kinguser/bed;

    .line 1233
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjr$7;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjr$7;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byo:Lcom/kingroot/kinguser/bed;

    .line 1471
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjr$10;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjr$10;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byp:Lcom/kingroot/kinguser/bed;

    .line 1522
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjr$11;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjr$11;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byq:Lcom/kingroot/kinguser/bed;

    .line 198
    invoke-static {p1}, Lcom/kingroot/kinguser/afe;->aE(Landroid/content/Context;)Lcom/kingroot/kinguser/afe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/afe;->a(Lcom/kingroot/kinguser/afe$a;)V

    .line 200
    iput v5, p0, Lcom/kingroot/kinguser/bjr;->byj:I

    .line 201
    const-string v0, "promptbox_config"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/rv;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byb:Landroid/content/SharedPreferences;

    .line 202
    new-instance v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byi:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    .line 203
    return-void
.end method

.method private H(Ljava/io/File;)Z
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1454
    const/4 v0, 0x0

    .line 1456
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1458
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    const/4 v0, 0x1

    .line 1465
    :goto_0
    return v0

    .line 1462
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private Uy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1174
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    if-nez v0, :cond_0

    .line 1175
    new-instance v0, Lcom/kingroot/kinguser/adi;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/adi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    .line 1176
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->show()V

    .line 1177
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1178
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adi;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1180
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1181
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1182
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1183
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f030045

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->setContentView(I)V

    .line 1184
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->acy:Landroid/widget/TextView;

    .line 1185
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->baA:Landroid/widget/TextView;

    .line 1186
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->acx:Landroid/widget/ImageView;

    .line 1187
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f00db

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahC:Landroid/widget/ImageView;

    .line 1188
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->acz:Landroid/view/animation/Animation;

    .line 1191
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    new-instance v1, Lcom/kingroot/kinguser/bjr$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjr$6;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1200
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/adi;->setCanceledOnTouchOutside(Z)V

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->baA:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->acy:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070352

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1209
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->acx:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->acz:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1210
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->show()V

    .line 1211
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjr;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/kingroot/kinguser/bjr;->byk:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjr;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byd:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjr;ZZ)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bjr;->i(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjr;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjr;->H(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjr;Z)Z
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bjr;->bxO:Z

    return p1
.end method

.method private ael()V
    .locals 6

    .prologue
    .line 307
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bjr$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/bjr$1;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 351
    return-void
.end method

.method private aeq()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    .line 609
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aep()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aen()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 642
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aep()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 644
    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-wide v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgSize:J

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 645
    goto :goto_1

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aen()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/kingroot/kinguser/bjr$16;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjr$16;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 634
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bjr;->bxO:Z

    if-nez v1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aen()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aem()Landroid/widget/Button;

    move-result-object v0

    const-wide/32 v4, 0x7f070389

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 647
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aep()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 646
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 648
    return-void
.end method

.method private aer()V
    .locals 3

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->Uy()V

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bjr;->ahF:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 660
    return-void
.end method

.method private aes()V
    .locals 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v13, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 664
    .line 665
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 668
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 670
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    if-eqz v5, :cond_0

    .line 674
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 675
    iput v13, v5, Landroid/os/Message;->what:I

    .line 676
    iget-object v7, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v7, v7, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 677
    iget-object v7, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v7, v7, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 681
    :goto_1
    add-int/lit8 v3, v3, 0x1

    iput v3, v5, Landroid/os/Message;->arg1:I

    .line 682
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 684
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v5, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    invoke-static {v5}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 686
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v5

    const v7, 0x18809

    invoke-virtual {v5, v7}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 690
    :cond_1
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-boolean v5, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-eqz v5, :cond_5

    .line 692
    :try_start_0
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v5, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingroot/kinguser/aff;->fb(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 693
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v5, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingroot/kinguser/aff;->fc(Ljava/lang/String;)Z

    move-result v1

    .line 698
    :goto_2
    if-nez v1, :cond_4

    .line 699
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v0, v1

    :goto_4
    move v1, v0

    .line 753
    goto :goto_0

    .line 679
    :cond_2
    iget-object v7, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v7, v7, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move v1, v4

    .line 695
    goto :goto_2

    .line 701
    :cond_4
    :try_start_1
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    const/4 v7, 0x2

    iput v7, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 703
    :catch_0
    move-exception v5

    .line 704
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 706
    goto :goto_4

    .line 709
    :cond_5
    const/16 v5, -0x63

    .line 711
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v7

    const/16 v10, 0x14

    if-ge v7, v10, :cond_11

    .line 712
    invoke-static {v0}, Lcom/kingroot/kinguser/aex;->a(Lcom/kingroot/kinguser/aex$a;)I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v7, v7, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->clearAction:I

    if-ne v7, v13, :cond_11

    .line 715
    :cond_6
    iget-object v5, p0, Lcom/kingroot/kinguser/bjr;->byi:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    iget-object v7, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v7, v7, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v10, v10, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    iget-object v11, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v11, v11, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v5, v7, v10, v11, v12}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Ljava/lang/String;ILjava/lang/String;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$b;)I

    move-result v5

    move v7, v5

    .line 719
    :goto_5
    if-nez v7, :cond_9

    .line 721
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 724
    :try_start_3
    iget-object v10, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v10, v10, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 728
    :goto_6
    if-eqz v5, :cond_7

    .line 729
    :try_start_4
    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v10, v5}, Lcom/kingroot/kinguser/aff;->V(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    move v1, v4

    .line 738
    :cond_7
    :goto_7
    if-nez v1, :cond_b

    .line 739
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_8
    move v0, v1

    .line 750
    goto :goto_4

    .line 725
    :catch_1
    move-exception v5

    move-object v5, v6

    goto :goto_6

    :cond_8
    move v1, v2

    .line 729
    goto :goto_7

    .line 735
    :cond_9
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v5, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingroot/kinguser/aff;->eZ(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    move v1, v4

    goto :goto_7

    :cond_a
    move v1, v2

    goto :goto_7

    .line 741
    :cond_b
    if-nez v7, :cond_c

    .line 742
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    const/4 v7, 0x2

    iput v7, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 747
    :catch_2
    move-exception v5

    .line 748
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto/16 :goto_4

    .line 744
    :cond_c
    :try_start_5
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    const/4 v7, 0x1

    iput v7, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 756
    :cond_d
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->getAllRiskApps()Ljava/util/List;

    move-result-object v1

    .line 757
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 758
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 759
    if-eqz v0, :cond_e

    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 763
    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 766
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1883b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 767
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byq:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 772
    :cond_f
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 774
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 776
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 778
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 781
    iget v1, p0, Lcom/kingroot/kinguser/bjr;->VA:I

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-eqz v1, :cond_10

    .line 783
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x186dc

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/ady;->w(II)V

    .line 786
    :cond_10
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 787
    return-void

    :cond_11
    move v7, v5

    goto/16 :goto_5
.end method

.method private aet()V
    .locals 4

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v0

    .line 1129
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byf:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1130
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byf:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1132
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 1133
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1135
    :cond_0
    return-void
.end method

.method private aeu()V
    .locals 4

    .prologue
    .line 1141
    new-instance v0, Lcom/kingroot/kinguser/bjt;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjt;-><init>(Landroid/content/Context;)V

    .line 1142
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjt;->show()V

    .line 1143
    const-wide/32 v2, 0x7f0703c7

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->setTitleText(Ljava/lang/String;)V

    .line 1144
    const-wide/32 v2, 0x7f07021d

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->ma(Ljava/lang/String;)V

    .line 1145
    const-wide/32 v2, 0x7f0700c4

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->lK(Ljava/lang/String;)V

    .line 1146
    const-wide/32 v2, 0x7f0700c9

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->lL(Ljava/lang/String;)V

    .line 1147
    new-instance v1, Lcom/kingroot/kinguser/bjr$5;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bjr$5;-><init>(Lcom/kingroot/kinguser/bjr;Lcom/kingroot/kinguser/bjt;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->a(Lcom/kingroot/kinguser/adf$b;)V

    .line 1155
    return-void
.end method

.method private aev()V
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aer()V

    .line 1165
    :cond_0
    return-void
.end method

.method private aew()V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 1378
    new-instance v0, Lcom/kingroot/kinguser/bid;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 1384
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1880a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1386
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 1387
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    const v2, 0x7f0703ca

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 1388
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    const v2, 0x7f0700c4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 1389
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    const v2, 0x7f0703c8

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 1390
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    const v2, 0x7f0703c9

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 1391
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$a;)V

    .line 1392
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bjr$8;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjr$8;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 1410
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bjr$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjr$9;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 1417
    return-void
.end method

.method private aex()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byg:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 1424
    :cond_0
    return-void
.end method

.method private aey()V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    if-nez v0, :cond_0

    .line 1432
    new-instance v0, Lcom/kingroot/kinguser/bif;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bif;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->show()V

    .line 1436
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703ca

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->setTitleText(Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703cb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->d(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->iZ(I)V

    .line 1439
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->ef(Z)V

    .line 1440
    return-void
.end method

.method private aez()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byh:Lcom/kingroot/kinguser/bif;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->dismiss()V

    .line 1447
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bjr;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vx:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private g(Lcom/kingroot/kinguser/aex$a;)V
    .locals 3

    .prologue
    .line 790
    iget-object v0, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/aff;->a(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 791
    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bjr;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vx:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bjr;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vx:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private i(ZZ)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 225
    iput v11, p0, Lcom/kingroot/kinguser/bjr;->byk:I

    .line 227
    if-eqz p1, :cond_6

    .line 228
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/afg;->aG(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 229
    iput v10, p0, Lcom/kingroot/kinguser/bjr;->byk:I

    .line 242
    :cond_0
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 246
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Lcom/kingroot/kinguser/arv;->getAllRiskApps()Ljava/util/List;

    move-result-object v4

    .line 252
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/kingroot/kinguser/afd;->aD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 257
    iget-object v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 262
    iget-object v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 263
    iget-object v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/kingroot/kinguser/arv;->getRiskType(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    .line 264
    if-eqz p2, :cond_3

    iget v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    invoke-static {v7}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 269
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v7

    const v8, 0x18807

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 275
    :cond_3
    :goto_2
    iget v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-ne v7, v9, :cond_2

    iget-boolean v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-eqz v7, :cond_2

    .line 277
    :cond_4
    iget-boolean v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    if-eqz v7, :cond_8

    .line 280
    :cond_5
    :try_start_0
    iget-object v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_2

    .line 286
    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_6
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/afg;->aF(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 235
    iput v9, p0, Lcom/kingroot/kinguser/bjr;->byk:I

    .line 236
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/afg;->aG(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 238
    iput v10, p0, Lcom/kingroot/kinguser/bjr;->byk:I

    goto/16 :goto_0

    .line 272
    :cond_7
    iput v9, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    goto :goto_2

    .line 288
    :cond_8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    :cond_9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjr;->byd:Landroid/util/SparseArray;

    .line 294
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->aeb()Lcom/kingroot/kinguser/bjn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjn;->aec()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byd:Landroid/util/SparseArray;

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byd:Landroid/util/SparseArray;

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    :goto_4
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    return-void

    .line 299
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byd:Landroid/util/SparseArray;

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 283
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method static synthetic j(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/bjr;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vx:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aev()V

    return-void
.end method

.method static synthetic m(Lcom/kingroot/kinguser/bjr;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byb:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/bjr;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/kingroot/kinguser/bjr;->byj:I

    return v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/bjr;)I
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/kingroot/kinguser/bjr;->byj:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/bjr;->byj:I

    return v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aes()V

    return-void
.end method

.method static synthetic q(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aey()V

    return-void
.end method

.method static synthetic r(Lcom/kingroot/kinguser/bjr;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byp:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aez()V

    return-void
.end method

.method static synthetic t(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aew()V

    return-void
.end method

.method private vh()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->dismiss()V

    .line 1171
    :cond_0
    return-void
.end method


# virtual methods
.method protected L(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ym;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->aeb()Lcom/kingroot/kinguser/bjn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjn;->aec()Z

    move-result v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/kingroot/kinguser/bjl;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjl;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/bjk;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjk;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ym;

    move-object v1, v0

    .line 214
    check-cast v1, Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/bjj;->a(Lcom/kingroot/kinguser/bjj$e;)V

    move-object v1, v0

    .line 215
    check-cast v1, Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/bjj;->a(Lcom/kingroot/kinguser/bjj$d;)V

    move-object v1, v0

    .line 216
    check-cast v1, Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/bjj;->a(Lcom/kingroot/kinguser/bjj$c;)V

    .line 217
    check-cast v0, Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bjj;->a(Lcom/kingroot/kinguser/bjj$b;)V

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method protected a(ILcom/kingroot/kinguser/ym;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 384
    if-nez p1, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjr$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bjr$a;->jt(I)V

    .line 387
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186d6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    :cond_0
    :goto_0
    move v1, v2

    .line 394
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 395
    if-ne v1, p1, :cond_2

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f0e0116

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/bjr;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 388
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjr$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjr$a;->jt(I)V

    .line 391
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186d7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f0e0115

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/bjr;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 405
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->vg()V

    .line 406
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 971
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yo;->a(Landroid/os/Message;)V

    .line 973
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1103
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 976
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byl:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 982
    :pswitch_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->ael()V

    .line 983
    iget v0, p0, Lcom/kingroot/kinguser/bjr;->byk:I

    if-ne v0, v4, :cond_1

    .line 984
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 994
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byn:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 1000
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->bym:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 1005
    :pswitch_5
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->ael()V

    goto :goto_0

    .line 1010
    :pswitch_6
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bjr;->bxT:I

    .line 1011
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/bjr$3;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bjr$3;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 1021
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->acy:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070352

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/kingroot/kinguser/bjr;->bxT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->baA:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1026
    :pswitch_8
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->acy:Landroid/widget/TextView;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1027
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->ahC:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->acx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1031
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1033
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->baA:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    :goto_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1035
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    sub-int v1, v0, v1

    .line 1036
    const/4 v0, 0x0

    .line 1038
    const-wide/32 v2, 0x7f070386

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1042
    :goto_2
    if-eqz v0, :cond_3

    if-gez v1, :cond_4

    .line 1043
    :cond_3
    const-string v0, ""

    .line 1045
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->baA:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->acx:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1055
    :pswitch_9
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    iget v1, p0, Lcom/kingroot/kinguser/bjr;->VA:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    .line 1056
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v1

    .line 1057
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjj;->p(Ljava/util/Collection;)V

    .line 1059
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 1061
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->vh()V

    goto/16 :goto_0

    .line 1066
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjr;->g(Lcom/kingroot/kinguser/aex$a;)V

    goto/16 :goto_0

    .line 1070
    :pswitch_b
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aeu()V

    goto/16 :goto_0

    .line 1074
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1081
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1088
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1095
    :pswitch_f
    iput-boolean v4, p0, Lcom/kingroot/kinguser/bjr;->byc:Z

    .line 1096
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/afe;->aE(Landroid/content/Context;)Lcom/kingroot/kinguser/afe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afe;->uY()V

    goto/16 :goto_0

    .line 1099
    :pswitch_10
    const-wide/32 v0, 0x7f070388

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    .line 1039
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_3
    .end packed-switch
.end method

.method public aA(Z)V
    .locals 2

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bjr;->byc:Z

    if-eqz v0, :cond_0

    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bjr;->byc:Z

    .line 1109
    if-eqz p1, :cond_1

    .line 1110
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->vh()V

    .line 1115
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aet()V

    .line 1117
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bjr$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjr$4;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public aea()V
    .locals 3

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v0

    .line 513
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 514
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aep()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 515
    iget v0, p0, Lcom/kingroot/kinguser/bjr;->VA:I

    packed-switch v0, :pswitch_data_0

    .line 546
    :goto_0
    return-void

    .line 517
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byb:Landroid/content/SharedPreferences;

    const-string v1, "checkbox_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/kingroot/kinguser/bjm;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjm;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjm;->show()V

    .line 520
    new-instance v1, Lcom/kingroot/kinguser/bjr$14;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjr$14;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjm;->a(Lcom/kingroot/kinguser/bjm$a;)V

    goto :goto_0

    .line 536
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186d9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 537
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aev()V

    goto :goto_0

    .line 542
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186da

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 543
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aer()V

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public aem()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    iget v1, p0, Lcom/kingroot/kinguser/bjr;->VA:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjj;->adW()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public aen()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    iget v1, p0, Lcom/kingroot/kinguser/bjr;->VA:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjj;->adX()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public aeo()Ljava/util/HashSet;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->bye:Ljava/util/HashSet;

    return-object v0
.end method

.method public aep()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    iget v1, p0, Lcom/kingroot/kinguser/bjr;->VA:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjj;->adV()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/kingroot/kinguser/aex$a;)V
    .locals 3

    .prologue
    .line 563
    .line 566
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byb:Landroid/content/SharedPreferences;

    const-string v1, "checkbox_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-boolean v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Lcom/kingroot/kinguser/bjm;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjm;-><init>(Landroid/content/Context;)V

    .line 569
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjm;->show()V

    .line 570
    new-instance v1, Lcom/kingroot/kinguser/bjr$15;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/bjr$15;-><init>(Lcom/kingroot/kinguser/bjr;Lcom/kingroot/kinguser/aex$a;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjm;->a(Lcom/kingroot/kinguser/bjm$a;)V

    .line 595
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186da

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 590
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v0

    .line 591
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 592
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aev()V

    goto :goto_0
.end method

.method protected oI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 417
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 420
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 421
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 423
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 424
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->aeb()Lcom/kingroot/kinguser/bjn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjn;->aec()Z

    move-result v3

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/bjr;->aBS:Ljava/util/ArrayList;

    .line 430
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->aBS:Ljava/util/ArrayList;

    const v2, 0x7f0f0018

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    if-eqz v3, :cond_0

    .line 432
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->aBS:Ljava/util/ArrayList;

    const v2, 0x7f0f0019

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    if-eqz v3, :cond_4

    .line 438
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 444
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/bjr;->aBT:Ljava/util/ArrayList;

    .line 445
    iget-object v4, p0, Lcom/kingroot/kinguser/bjr;->aBT:Ljava/util/ArrayList;

    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    if-eqz v3, :cond_1

    .line 447
    iget-object v4, p0, Lcom/kingroot/kinguser/bjr;->aBT:Ljava/util/ArrayList;

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_1
    const v1, 0x7f0f00aa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 451
    if-eqz v3, :cond_2

    .line 452
    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 456
    const-wide/32 v4, 0x7f0e0115

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/bjr;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    iget-object v3, p0, Lcom/kingroot/kinguser/bjr;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 459
    if-eqz v2, :cond_3

    if-ltz v3, :cond_3

    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 460
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_3
    new-instance v4, Lcom/kingroot/kinguser/bjr$12;

    invoke-direct {v4, p0, v3}, Lcom/kingroot/kinguser/bjr$12;-><init>(Lcom/kingroot/kinguser/bjr;I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 440
    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v4, 0x7f070359

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    move-object v2, v1

    goto/16 :goto_0

    .line 471
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vx:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 472
    const/4 v1, 0x2

    const v2, 0x7f0f000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 473
    const/4 v1, 0x3

    const v2, 0x7f0f0017

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0e0116

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjr;->X(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    invoke-static {}, Lcom/kingroot/kinguser/aer;->uD()V

    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vx:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bjr$13;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjr$13;-><init>(Lcom/kingroot/kinguser/bjr;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 491
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 411
    new-instance v0, Lcom/kingroot/kinguser/bjr$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070179

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/bjr$a;-><init>(Lcom/kingroot/kinguser/bjr;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1216
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/yo;->onActivityResult(IILandroid/content/Intent;)V

    .line 1218
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 1220
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    iget v3, p0, Lcom/kingroot/kinguser/bjr;->VA:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/bjj;

    .line 1222
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bjj;->d(Lcom/kingroot/kinguser/aex$a;)V

    .line 1223
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byf:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1228
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1229
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1231
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yo;->onCreate(Landroid/os/Bundle;)V

    .line 358
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    const-string v1, "com_from_risk_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18806

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 364
    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/blj;->a(Lcom/kingroot/kinguser/blj$a;)V

    .line 365
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 1250
    invoke-static {p0}, Lcom/kingroot/kinguser/blj;->b(Lcom/kingroot/kinguser/blj$a;)V

    .line 1253
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->vh()V

    .line 1255
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aex()V

    .line 1256
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aez()V

    .line 1258
    invoke-super {p0}, Lcom/kingroot/kinguser/yo;->onDestroy()V

    .line 1259
    return-void
.end method

.method public onPackageAdd(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1310
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->byd:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 1314
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 1318
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1321
    :goto_0
    sget-object v4, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 1322
    iget-object v7, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1324
    if-nez v1, :cond_3

    move v6, v3

    move-object v4, v5

    .line 1347
    :goto_1
    if-nez v6, :cond_7

    .line 1348
    if-eqz v1, :cond_7

    .line 1351
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v2

    .line 1352
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;IZZLandroid/content/pm/ActivityInfo;)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    move-result-object v0

    .line 1355
    iget-boolean v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-nez v1, :cond_1

    .line 1356
    iput-boolean v3, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->checkCacheFail:Z

    .line 1358
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1363
    :goto_2
    if-eqz v1, :cond_2

    .line 1364
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr;->Vc:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    check-cast v0, Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjj;->b(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;)V

    .line 1367
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byo:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1370
    :cond_2
    return-void

    .line 1319
    :catch_0
    move-exception v1

    move-object v1, v5

    goto :goto_0

    .line 1328
    :cond_3
    iput v2, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    .line 1330
    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionCode:I

    .line 1331
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionName:Ljava/lang/String;

    .line 1332
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    .line 1333
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_6

    move v6, v3

    :goto_3
    iput-boolean v6, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    .line 1334
    iget-boolean v6, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-eqz v6, :cond_4

    .line 1335
    iput v2, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    .line 1337
    :cond_4
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 1338
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgLastModified:J

    .line 1340
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgSize:J

    :cond_5
    move v6, v3

    .line 1343
    goto :goto_1

    :cond_6
    move v6, v2

    .line 1333
    goto :goto_3

    :cond_7
    move-object v1, v4

    goto :goto_2

    :cond_8
    move v6, v2

    move-object v4, v5

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Lcom/kingroot/kinguser/yo;->onPause()V

    .line 371
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Lcom/kingroot/kinguser/yo;->onResume()V

    .line 376
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjr;->U(J)V

    .line 377
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1243
    invoke-super {p0}, Lcom/kingroot/kinguser/yo;->onStop()V

    .line 1244
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr;->byo:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1245
    return-void
.end method

.method public vg()V
    .locals 1

    .prologue
    .line 600
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjr;->aeq()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    goto :goto_0
.end method

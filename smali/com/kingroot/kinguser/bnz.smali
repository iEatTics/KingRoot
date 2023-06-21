.class public final Lcom/kingroot/kinguser/bnz;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:Z

.field public static f:I

.field private static g:Ljava/lang/String;

.field private static volatile h:I

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/bnz;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/bnz;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/bnz;->c:Ljava/lang/String;

    const/4 v0, 0x5

    sput v0, Lcom/kingroot/kinguser/bnz;->d:I

    const-string v0, ".temp"

    sput-object v0, Lcom/kingroot/kinguser/bnz;->g:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/bnz;->e:Z

    const/16 v0, 0x1f4

    sput v0, Lcom/kingroot/kinguser/bnz;->h:I

    const/16 v0, 0x32

    sput v0, Lcom/kingroot/kinguser/bnz;->f:I

    const/16 v0, 0x1770

    sput v0, Lcom/kingroot/kinguser/bnz;->i:I

    return-void
.end method

.method public static a()I
    .locals 1

    invoke-static {}, Lcom/kingroot/kinguser/boe;->f()I

    const/16 v0, 0x4e20

    return v0
.end method

.method public static b()I
    .locals 1

    invoke-static {}, Lcom/kingroot/kinguser/boe;->f()I

    const/16 v0, 0x4e20

    return v0
.end method

.method public static c()I
    .locals 2

    const/high16 v0, 0x100000

    invoke-static {}, Lcom/kingroot/kinguser/boe;->f()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/high16 v0, 0x80000

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d()I
    .locals 1

    const/high16 v0, 0x80000

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/bok;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/HalleyDownload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/boi;->agA()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/kingroot/kinguser/bnz;->h:I

    return v0
.end method

.method public static g()I
    .locals 1

    const v0, 0xea60

    return v0
.end method

.method public static h()I
    .locals 1

    const/16 v0, 0x4e20

    return v0
.end method

.method public static i()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public static j()I
    .locals 1

    sget v0, Lcom/kingroot/kinguser/bnz;->i:I

    return v0
.end method

.method public static mK(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bdcfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mL(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/kingroot/kinguser/bok;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static mf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/bnz;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

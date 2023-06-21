.class public Lcom/kingroot/kinguser/bcp;
.super Lcom/kingroot/kinguser/bij;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aVw:Z

.field private biv:Landroid/content/Context;

.field private biw:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/bij;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p2, p0, Lcom/kingroot/kinguser/bcp;->biv:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bcp;->setContentView(Landroid/view/View;)V

    .line 51
    const v1, 0x7f0f01e9

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bcp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bcp;->biw:Landroid/view/View;

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bcp;->aVw:Z

    .line 54
    const v1, 0x7f0f01ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f0f01eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method private XJ()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 93
    new-instance v1, Ljava/io/File;

    .line 94
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->XI()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0701cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbk;->Wo()Lcom/kingroot/kinguser/bbk;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bcp;->biv:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bbk;->bl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_1

    .line 106
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    const/16 v4, 0x200

    :try_start_2
    new-array v4, v4, [B

    .line 120
    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    .line 121
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 136
    :catch_0
    move-exception v1

    .line 137
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 140
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 144
    :goto_3
    return-object v0

    .line 108
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0201b7

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/acs;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 109
    if-nez v2, :cond_2

    .line 140
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_3

    .line 112
    :cond_2
    :try_start_5
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 114
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 136
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2

    .line 123
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 126
    :try_start_7
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->XI()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 132
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 140
    :goto_4
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 140
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_5
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 140
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 136
    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_2

    .line 133
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bcp;->aVw:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbk;->Wo()Lcom/kingroot/kinguser/bbk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbk;->bl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-static {v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bcp;->aVw:Z

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public XI()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bcp;->biv:Landroid/content/Context;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f01ea

    if-ne v0, v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->dismiss()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f01eb

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18865

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 69
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcp;->XJ()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->XI()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->XI()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->dismiss()V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->XI()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public show()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/kingroot/kinguser/bij;->show()V

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18864

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 89
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcp;->XI()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bcp;->biw:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bcp;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    return-void
.end method

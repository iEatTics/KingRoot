.class public Lcom/kingroot/kinguser/agi$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public amD:Landroid/graphics/drawable/Drawable;

.field public amE:Landroid/text/Spanned;

.field public amF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agj$b;",
            ">;"
        }
    .end annotation
.end field

.field public amG:Z

.field public amH:Z

.field public appName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/text/Spanned;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/text/Spanned;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agj$b;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/kingroot/kinguser/agi$c;->packageName:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/kingroot/kinguser/agi$c;->amD:Landroid/graphics/drawable/Drawable;

    .line 171
    iput-object p3, p0, Lcom/kingroot/kinguser/agi$c;->appName:Ljava/lang/String;

    .line 172
    iput-object p4, p0, Lcom/kingroot/kinguser/agi$c;->amE:Landroid/text/Spanned;

    .line 173
    iput-object p5, p0, Lcom/kingroot/kinguser/agi$c;->amF:Ljava/util/List;

    .line 174
    iput-boolean p6, p0, Lcom/kingroot/kinguser/agi$c;->amG:Z

    .line 175
    iput-boolean p7, p0, Lcom/kingroot/kinguser/agi$c;->amH:Z

    .line 176
    return-void
.end method

.method public static a(Ljava/lang/String;ZLjava/util/List;)Lcom/kingroot/kinguser/agi$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;)",
            "Lcom/kingroot/kinguser/agi$c;"
        }
    .end annotation

    .prologue
    const v5, 0x7f020110

    const v3, 0x7f070321

    .line 179
    const/4 v1, 0x0

    .line 182
    const/4 v7, 0x1

    .line 183
    const-string v0, "unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07034d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 188
    const/4 v7, 0x0

    move-object v3, v0

    move-object v2, v1

    .line 223
    :goto_0
    invoke-static {p2}, Lcom/kingroot/kinguser/agj$b;->ae(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 225
    new-instance v0, Lcom/kingroot/kinguser/agi$c;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/agi$c;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/text/Spanned;Ljava/util/List;ZZ)V

    return-object v0

    .line 190
    :cond_0
    const-string v0, "com.android.shell"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070345

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0202bd

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 203
    if-nez v1, :cond_1

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/agy;->fG(Ljava/lang/String;)Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_2

    .line 209
    iget v2, v2, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mRule:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    move-object v3, v0

    move-object v2, v1

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {p0}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 211
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070320

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object v3, v0

    move-object v2, v1

    .line 212
    goto :goto_0

    .line 214
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070322

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object v3, v0

    move-object v2, v1

    .line 215
    goto/16 :goto_0

    .line 217
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object v3, v0

    move-object v2, v1

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v2

    goto :goto_1

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public db(I)V
    .locals 2

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 235
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070320

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$c;->amE:Landroid/text/Spanned;

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070322

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$c;->amE:Landroid/text/Spanned;

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070321

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$c;->amE:Landroid/text/Spanned;

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

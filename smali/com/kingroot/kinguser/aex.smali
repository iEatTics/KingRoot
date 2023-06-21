.class public Lcom/kingroot/kinguser/aex;
.super Lcom/kingroot/kinguser/yn$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aex$a;,
        Lcom/kingroot/kinguser/aex$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/yn$a",
        "<",
        "Lcom/kingroot/kinguser/aex$a;",
        ">;"
    }
.end annotation


# instance fields
.field private afK:[Ljava/lang/String;

.field private afL:Z

.field private afM:Landroid/view/View$OnClickListener;

.field private afN:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private afO:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLandroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/yn$a;-><init>(Landroid/content/Context;I)V

    .line 63
    iput-object p4, p0, Lcom/kingroot/kinguser/aex;->afM:Landroid/view/View$OnClickListener;

    .line 64
    iput-object p5, p0, Lcom/kingroot/kinguser/aex;->afN:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 65
    iput-boolean p3, p0, Lcom/kingroot/kinguser/aex;->afL:Z

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aex;->afK:[Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aex;->afO:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/aex;->afO:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 70
    iget-object v1, p0, Lcom/kingroot/kinguser/aex;->afO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    :cond_0
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/aex$a;)I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    packed-switch v0, :pswitch_data_0

    .line 293
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 277
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 285
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Lcom/kingroot/kinguser/aex$a;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    packed-switch v0, :pswitch_data_0

    .line 331
    :pswitch_0
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 332
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 302
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->flag:I

    if-nez v0, :cond_0

    .line 303
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 304
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    goto :goto_0

    .line 311
    :pswitch_2
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 312
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    goto :goto_0

    .line 319
    :pswitch_3
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 320
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    goto :goto_0

    .line 325
    :pswitch_4
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 326
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    if-nez p2, :cond_1

    .line 85
    new-instance v1, Lcom/kingroot/kinguser/aex$b;

    invoke-direct {v1, v3}, Lcom/kingroot/kinguser/aex$b;-><init>(Lcom/kingroot/kinguser/aex$1;)V

    .line 86
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aex;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300e3

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    iget v0, p0, Lcom/kingroot/kinguser/aex;->Vu:I

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afT:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aex;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    .line 96
    if-eqz v1, :cond_0

    .line 97
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afT:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 98
    iget-object v1, v1, Lcom/kingroot/kinguser/aex$b;->afT:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-object p2

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$b;

    move-object v1, v0

    goto :goto_0
.end method

.method public c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aex;->getItemViewType(I)I

    move-result v2

    .line 110
    if-ne v2, v4, :cond_1

    .line 111
    if-nez p2, :cond_0

    .line 112
    new-instance v1, Lcom/kingroot/kinguser/aex$b;

    invoke-direct {v1, v6}, Lcom/kingroot/kinguser/aex$b;-><init>(Lcom/kingroot/kinguser/aex$1;)V

    .line 113
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aex;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300aa

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 116
    const v0, 0x7f0f0146

    .line 117
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afU:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0f0224

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afW:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0f0226

    .line 121
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afZ:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f0f0225

    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/aex;->afM:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    :goto_0
    if-ne v2, v4, :cond_3

    .line 158
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aex;->bU(I)Lcom/kingroot/kinguser/yn$b;

    move-result-object v0

    .line 159
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afW:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afW:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    iget-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afW:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0111

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afW:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    iget-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afZ:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afU:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    :goto_1
    return-object p2

    .line 127
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$b;

    move-object v1, v0

    goto :goto_0

    .line 130
    :cond_1
    if-nez p2, :cond_2

    .line 131
    new-instance v1, Lcom/kingroot/kinguser/aex$b;

    invoke-direct {v1, v6}, Lcom/kingroot/kinguser/aex$b;-><init>(Lcom/kingroot/kinguser/aex$1;)V

    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aex;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03004a

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 135
    const v0, 0x7f0f0148

    .line 136
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afU:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f0f00d1

    .line 138
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afV:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0f014a

    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afW:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0f0149

    .line 142
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0f014b

    .line 144
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->afX:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0f014c

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    .line 147
    iget-object v0, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/kingroot/kinguser/acz;->l(Landroid/view/View;)V

    .line 148
    const v0, 0x7f0f014d

    .line 149
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$b;->agb:Landroid/widget/TextView;

    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 152
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$b;

    move-object v1, v0

    goto/16 :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/aex;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 170
    iget-object v2, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 171
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 172
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->agb:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :goto_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aex;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_4

    .line 195
    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/kingroot/kinguser/aex$b;->afU:Landroid/widget/ImageView;

    const v5, 0x7f020110

    invoke-virtual {v2, v3, v4, v5}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 199
    :cond_4
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afV:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    invoke-static {v2}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 204
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afX:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0009

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afX:Landroid/widget/TextView;

    const v3, 0x7f020283

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 206
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afX:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :goto_3
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0117

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v2, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-boolean v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-nez v2, :cond_c

    .line 214
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pj()Z

    move-result v2

    .line 215
    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    const-string v4, ""

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    .line 217
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_4
    iget-object v1, v1, Lcom/kingroot/kinguser/aex$b;->afW:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 175
    :cond_5
    iget-boolean v2, v0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    if-nez v2, :cond_6

    .line 176
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    :cond_6
    iget-boolean v2, v0, Lcom/kingroot/kinguser/aex$a;->afS:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/kingroot/kinguser/aex;->afL:Z

    if-eqz v2, :cond_8

    .line 182
    :cond_7
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->agb:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 184
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setId(I)V

    .line 185
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    iget-boolean v3, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 186
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/kingroot/kinguser/aex;->afN:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 188
    :cond_8
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->aga:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    .line 208
    :cond_9
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afX:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 220
    :cond_a
    iget-object v2, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/aex;->cP(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 222
    iget-object v3, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 224
    :cond_b
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    .line 225
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07036b

    .line 226
    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 230
    :cond_c
    iget-object v2, v1, Lcom/kingroot/kinguser/aex$b;->afY:Landroid/widget/TextView;

    .line 231
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070370

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v5, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionName:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 230
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public cP(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/kingroot/kinguser/aex;->afK:[Ljava/lang/String;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/aex;->afK:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/aex;->afK:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 246
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x3

    return v0
.end method

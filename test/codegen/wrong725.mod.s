##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 8 of <array 9 of <array 3 of <array 7 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t2 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   8:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   9:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 3 of <array 2 of <array 10 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 8 of <array 4 of <array 8 of <array 1 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -20(%ebp)   1  [ $v4       <char> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t2 < 52264 goto 1_if_true
    movl    $52264, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $18362, %eax            #   5:     if     18362 < 95420 goto 6
    movl    $95420, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_8:
    movzbl  -18(%ebp), %eax         #  13:     return t4
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  14:     call   t5 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    jmp     l_f1_0                  #  15:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  18:     assign v4 <- 98
    movb    %al, -20(%ebp)         
    movl    $100, %eax              #  19:     assign v4 <- 100
    movb    %al, -20(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 8 of <array 9 of <array 3 of <array 7 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 8 of <array 9 of <array 3 of <array 7 of <bool>>>>>>> %ebp-88 ]
    #    -89(%ebp)   1  [ $t4       <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $t5       <char> %ebp-90 ]
    #    -91(%ebp)   1  [ $t6       <bool> %ebp-91 ]
    #    -92(%ebp)   1  [ $t7       <char> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 7 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 5 of <array 6 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -13732(%ebp)  13632  [ $v3       <array 9 of <array 8 of <array 9 of <array 3 of <array 7 of <bool>>>>>> %ebp-13732 ]
    #   -13736(%ebp)   4  [ $v4       <int> %ebp-13736 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13724, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3431, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-13732(%ebp)         # local array 'v3': 5 dimensions
    movl    $9,-13728(%ebp)         #   dimension 1: 9 elements
    movl    $8,-13724(%ebp)         #   dimension 2: 8 elements
    movl    $9,-13720(%ebp)         #   dimension 3: 9 elements
    movl    $3,-13716(%ebp)         #   dimension 4: 3 elements
    movl    $7,-13712(%ebp)         #   dimension 5: 7 elements

    # function body
    leal    -13732(%ebp), %eax      #   0:     &()    t2 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     param  2 <- t2
    pushl   %eax                   
    movl    $1, %eax                #   2:     param  1 <- 1
    pushl   %eax                   
    leal    -13732(%ebp), %eax      #   3:     &()    t3 <- v3
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   4:     param  2 <- t3
    pushl   %eax                   
    jmp     l_f2_6                  #   5:     goto   6
    jmp     l_f2_6                  #   6:     goto   6
    jmp     l_f2_6                  #   7:     goto   6
    jmp     l_f2_6                  #   8:     goto   6
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f2_7                  #  10:     goto   7
l_f2_6:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -89(%ebp)         
l_f2_7:
    movzbl  -89(%ebp), %eax         #  14:     param  1 <- t4
    pushl   %eax                   
    movl    $0, %eax                #  15:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  16:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -90(%ebp)         
    movzbl  -90(%ebp), %eax         #  17:     if     t5 >= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #  18:     goto   2
l_f2_1:
    movl    $1, %eax                #  20:     assign t6 <- 1
    movb    %al, -91(%ebp)         
    jmp     l_f2_3                  #  21:     goto   3
l_f2_2:
    movl    $0, %eax                #  23:     assign t6 <- 0
    movb    %al, -91(%ebp)         
l_f2_3:
    movzbl  -91(%ebp), %eax         #  25:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  26:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -92(%ebp)         
    movzbl  -92(%ebp), %eax         #  27:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #  28:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #  29:     call   t8 <- dummyINTfunc
    movl    %eax, -96(%ebp)        
    movl    $51632, %eax            #  30:     sub    t9 <- 51632, 96709
    movl    $96709, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  31:     add    t10 <- t9, 45364
    movl    $45364, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  33:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  34:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $11841, %eax            #  35:     mul    t12 <- 11841, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  36:     add    t13 <- t12, 56479
    movl    $56479, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  38:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  39:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  40:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  41:     add    t16 <- t15, 45055
    movl    $45055, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  43:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  44:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  45:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  46:     add    t19 <- t18, 59978
    movl    $59978, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  48:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  49:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  50:     mul    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  51:     add    t22 <- t21, 69007
    movl    $69007, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  52:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  53:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  54:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  55:     add    t25 <- t23, t24
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    12(%ebp), %eax          #  56:     add    t26 <- v1, t25
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -16(%ebp), %eax         #  57:     assign @t26 <- t10
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $13724, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   4:     goto   7
l_test_7:
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
l_test_11_while_cond:
    movl    $99, %eax               #  10:     if     99 >= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #  11:     goto   10
l_test_12_while_body:
    jmp     l_test_14               #  13:     goto   14
l_test_14:
    jmp     l_test_17               #  15:     goto   17
l_test_17:
    jmp     l_test_20               #  17:     goto   20
l_test_20:
l_test_24_while_cond:
    movl    $24623, %eax            #  20:     if     24623 = 38101 goto 25_while_body
    movl    $38101, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_25_while_body   
    jmp     l_test_23               #  21:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  23:     goto   24_while_cond
l_test_23:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_29               #  27:     goto   29
l_test_29:
    jmp     l_test_11_while_cond    #  29:     goto   11_while_cond
l_test_10:
    call    dummyINTfunc            #  31:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_34_while_cond:
    jmp     l_test_35_while_body    #  33:     goto   35_while_body
    jmp     l_test_35_while_body    #  34:     goto   35_while_body
    jmp     l_test_35_while_body    #  35:     goto   35_while_body
    jmp     l_test_35_while_body    #  36:     goto   35_while_body
    jmp     l_test_35_while_body    #  37:     goto   35_while_body
    jmp     l_test_35_while_body    #  38:     goto   35_while_body
l_test_35_while_body:
    movl    $45005, %eax            #  40:     if     45005 > 9593 goto 44_if_true
    movl    $9593, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_44_if_true      
    jmp     l_test_45_if_false      #  41:     goto   45_if_false
l_test_44_if_true:
    jmp     l_test_43               #  43:     goto   43
l_test_45_if_false:
l_test_43:
    jmp     l_test_exit            
    jmp     l_test_34_while_cond    #  47:     goto   34_while_cond

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################

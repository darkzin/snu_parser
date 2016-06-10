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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <bool> %ebp-23 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 8 of <array 4 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 2 of <array 2 of <array 3 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 2 of <array 10 of <char>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v5       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $68938, %eax            #   0:     if     68938 # 22927 goto 1_if_true
    movl    $22927, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $0, %eax                #   3:     if     0 # 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_10_if_false        #   9:     goto   10_if_false
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_if_false:
l_f0_8:
l_f0_12_while_cond:
    movl    $64479, %eax            #  14:     if     64479 = 27834 goto 13_while_body
    movl    $27834, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_13_while_body     
    jmp     l_f0_11                 #  15:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  17:     goto   12_while_cond
l_f0_11:
    call    dummyBOOLfunc           #  19:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $5149, %eax             #  20:     if     5149 <= 12530 goto 17_if_true
    movl    $12530, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  21:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18_if_false:
l_f0_16:
    call    dummyINTfunc            #  26:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $6817, %eax             #  27:     param  0 <- 6817
    pushl   %eax                   
    call    WriteInt                #  28:     call   WriteInt
    addl    $4, %esp               
    movl    $29361, %eax            #  29:     if     29361 >= 10355 goto 23
    movl    $10355, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_23                
    jmp     l_f0_24                 #  30:     goto   24
l_f0_23:
    movl    $1, %eax                #  32:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_25                 #  33:     goto   25
l_f0_24:
    movl    $0, %eax                #  35:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f0_25:
    movzbl  -21(%ebp), %eax         #  37:     assign v1 <- t6
    movb    %al, 8(%ebp)           
    jmp     l_f0_0                  #  38:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_28_while_cond:
    movl    $715, %eax              #  42:     if     715 <= 16989 goto 29_while_body
    movl    $16989, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_29_while_body     
    jmp     l_f0_27                 #  43:     goto   27
l_f0_29_while_body:
l_f0_32_while_cond:
    movl    $97, %eax               #  46:     if     97 <= 100 goto 33_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_33_while_body     
    jmp     l_f0_31                 #  47:     goto   31
l_f0_33_while_body:
    jmp     l_f0_35                 #  49:     goto   35
l_f0_35:
    movl    $97, %eax               #  51:     if     97 > 97 goto 39_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_39_if_true        
    jmp     l_f0_40_if_false        #  52:     goto   40_if_false
l_f0_39_if_true:
    jmp     l_f0_38                 #  54:     goto   38
l_f0_40_if_false:
l_f0_38:
    movl    $24412, %eax            #  57:     assign v5 <- 24412
    movl    %eax, -28(%ebp)        
    jmp     l_f0_32_while_cond      #  58:     goto   32_while_cond
l_f0_31:
    jmp     l_f0_28_while_cond      #  60:     goto   28_while_cond
l_f0_27:
l_f0_44_while_cond:
    jmp     l_f0_47                 #  63:     goto   47
l_f0_47:
    movl    $1, %eax                #  65:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_49                 #  66:     goto   49
    movl    $0, %eax                #  67:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f0_49:
    movzbl  -22(%ebp), %eax         #  69:     if     t7 = 1 goto 45_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_45_while_body     
    jmp     l_f0_43                 #  70:     goto   43
l_f0_45_while_body:
    movl    $4338, %eax             #  72:     if     4338 < 23825 goto 53
    movl    $23825, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_53                
    jmp     l_f0_54                 #  73:     goto   54
l_f0_53:
    movl    $1, %eax                #  75:     assign t8 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_55                 #  76:     goto   55
l_f0_54:
    movl    $0, %eax                #  78:     assign t8 <- 0
    movb    %al, -23(%ebp)         
l_f0_55:
    movzbl  -23(%ebp), %eax         #  80:     return t8
    jmp     l_f0_exit              
l_f0_58_while_cond:
    jmp     l_f0_57                 #  82:     goto   57
    jmp     l_f0_58_while_cond      #  83:     goto   58_while_cond
l_f0_57:
    jmp     l_f0_44_while_cond      #  85:     goto   44_while_cond
l_f0_43:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 5 of <array 2 of <array 8 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
    movl    $99, %eax               #   2:     assign v3 <- 99
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 10 of <array 7 of <array 8 of <array 4 of <array 2 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 2 of <array 10 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 1 of <array 2 of <array 2 of <array 3 of <array 10 of <int>>>>>>> %ebp-44 ]
    #   -17988(%ebp)  17944  [ $v1       <array 10 of <array 7 of <array 8 of <array 4 of <array 2 of <int>>>>>> %ebp-17988 ]
    #   -18492(%ebp)  504  [ $v2       <array 1 of <array 2 of <array 2 of <array 3 of <array 10 of <int>>>>>> %ebp-18492 ]
    #   -24276(%ebp)  5784  [ $v3       <array 8 of <array 9 of <array 4 of <array 2 of <array 10 of <char>>>>>> %ebp-24276 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24264, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6066, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17988(%ebp)         # local array 'v1': 5 dimensions
    movl    $10,-17984(%ebp)        #   dimension 1: 10 elements
    movl    $7,-17980(%ebp)         #   dimension 2: 7 elements
    movl    $8,-17976(%ebp)         #   dimension 3: 8 elements
    movl    $4,-17972(%ebp)         #   dimension 4: 4 elements
    movl    $2,-17968(%ebp)         #   dimension 5: 2 elements
    movl    $5,-18492(%ebp)         # local array 'v2': 5 dimensions
    movl    $1,-18488(%ebp)         #   dimension 1: 1 elements
    movl    $2,-18484(%ebp)         #   dimension 2: 2 elements
    movl    $2,-18480(%ebp)         #   dimension 3: 2 elements
    movl    $3,-18476(%ebp)         #   dimension 4: 3 elements
    movl    $10,-18472(%ebp)        #   dimension 5: 10 elements
    movl    $5,-24276(%ebp)         # local array 'v3': 5 dimensions
    movl    $8,-24272(%ebp)         #   dimension 1: 8 elements
    movl    $9,-24268(%ebp)         #   dimension 2: 9 elements
    movl    $4,-24264(%ebp)         #   dimension 3: 4 elements
    movl    $2,-24260(%ebp)         #   dimension 4: 2 elements
    movl    $10,-24256(%ebp)        #   dimension 5: 10 elements

    # function body
    movl    $60450, %eax            #   0:     mul    t4 <- 60450, 2946
    movl    $2946, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     div    t5 <- t4, 46958
    movl    $46958, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     mul    t6 <- t5, 96658
    movl    $96658, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     return t6
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    leal    -24276(%ebp), %eax      #   5:     &()    t8 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     param  3 <- t8
    pushl   %eax                   
    leal    -18492(%ebp), %eax      #   7:     &()    t9 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     param  2 <- t9
    pushl   %eax                   
    leal    -17988(%ebp), %eax      #   9:     &()    t10 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  1 <- t10
    pushl   %eax                   
    movl    $1, %eax                #  11:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  12:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $24264, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 2 of <array 10 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 1 of <array 2 of <array 2 of <array 3 of <array 10 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 10 of <array 7 of <array 8 of <array 4 of <array 2 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    movl    $100, %eax              #   1:     if     100 < 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
    movl    $0, %eax                #   5:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_11_if_false      #   6:     goto   11_if_false
    jmp     l_test_9                #   7:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_5                #  10:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    leal    v3, %eax                #  16:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     param  3 <- t0
    pushl   %eax                   
    leal    v2, %eax                #  18:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  1 <- t2
    pushl   %eax                   
    movl    $0, %eax                #  22:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  23:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  24:     if     t3 = 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  25:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  27:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_17_if_false      #  30:     goto   17_if_false
    movl    $47802, %eax            #  31:     if     47802 # 69777 goto 19_if_true
    movl    $69777, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_19_if_true      
    jmp     l_test_20_if_false      #  32:     goto   20_if_false
l_test_19_if_true:
l_test_23_while_cond:
    jmp     l_test_22               #  35:     goto   22
    jmp     l_test_23_while_cond    #  36:     goto   23_while_cond
l_test_22:
    movl    $57581, %eax            #  38:     assign v4 <- 57581
    movl    %eax, v4               
    movl    $21634, %eax            #  39:     assign v4 <- 21634
    movl    %eax, v4               
    jmp     l_test_27               #  40:     goto   27
l_test_27:
    jmp     l_test_18               #  42:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_15               #  45:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_33               #  48:     goto   33
l_test_33:
    call    WriteLn                 #  50:     call   WriteLn
    jmp     l_test_exit            
    jmp     l_test_40_if_false      #  52:     goto   40_if_false
    jmp     l_test_38               #  53:     goto   38
l_test_40_if_false:
l_test_38:
    jmp     l_test_30               #  56:     goto   30
l_test_30:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 10 of <array 7 of <array 8 of <array 4 of <array 2 of <int>>>>>>
    .long    5
    .long   10
    .long    7
    .long    8
    .long    4
    .long    2
    .skip 17920
v2:                                 # <array 1 of <array 2 of <array 2 of <array 3 of <array 10 of <int>>>>>>
    .long    5
    .long    1
    .long    2
    .long    2
    .long    3
    .long   10
    .skip  480
v3:                                 # <array 8 of <array 9 of <array 4 of <array 2 of <array 10 of <char>>>>>>
    .long    5
    .long    8
    .long    9
    .long    4
    .long    2
    .long   10
    .skip 5760
v4:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

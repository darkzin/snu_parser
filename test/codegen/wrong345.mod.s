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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 9 of <array 8 of <array 5 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f0_3_while_cond:
    movl    $100, %eax              #   3:     if     100 > 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    movl    $94514, %eax            #   6:     if     94514 <= 88635 goto 7_if_true
    movl    $88635, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_3_while_cond       #  12:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    movl    $78806, %eax            #   2:     sub    t5 <- 78806, 33618
    movl    $33618, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t5 < 62488 goto 3_while_body
    movl    $62488, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    movl    $99, %eax               #   6:     assign v2 <- 99
    movb    %al, -22(%ebp)         
    jmp     l_f1_exit              
l_f1_8_while_cond:
    movl    $11216, %eax            #   9:     if     11216 > 56972 goto 9_while_body
    movl    $56972, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  12:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  16:     call   t6 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 2 of <array 8 of <array 7 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $34052, %eax            #   0:     add    t4 <- 34052, 3375
    movl    $3375, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t4 <= t5 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     return t6
    jmp     l_f2_exit              
    call    dummyProcedure          #  11:     call   dummyProcedure
    call    dummyProcedure          #  12:     call   dummyProcedure
    movl    $0, %eax                #  13:     return 0
    jmp     l_f2_exit              
l_f2_12_while_cond:
    jmp     l_f2_11                 #  15:     goto   11
    jmp     l_f2_12_while_cond      #  16:     goto   12_while_cond
l_f2_11:
l_f2_15_while_cond:
    movl    $34741, %eax            #  19:     if     34741 > 20996 goto 16_while_body
    movl    $20996, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_16_while_body     
    jmp     l_f2_14                 #  20:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  22:     goto   15_while_cond
l_f2_14:
    movl    $54846, %eax            #  24:     if     54846 < 12749 goto 19
    movl    $12749, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_19                
    jmp     l_f2_20                 #  25:     goto   20
l_f2_19:
    movl    $1, %eax                #  27:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_21                 #  28:     goto   21
l_f2_20:
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f2_21:
    movzbl  -22(%ebp), %eax         #  32:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_5                  #  33:     goto   5
l_f2_5:
l_f2_24_while_cond:
    jmp     l_f2_23                 #  36:     goto   23
    movl    $1, %eax                #  37:     if     1 = 0 goto 28_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_28_if_true        
    jmp     l_f2_29_if_false        #  38:     goto   29_if_false
l_f2_28_if_true:
    jmp     l_f2_27                 #  40:     goto   27
l_f2_29_if_false:
l_f2_27:
    jmp     l_f2_24_while_cond      #  43:     goto   24_while_cond
l_f2_23:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    movl    $99, %eax               #   0:     if     99 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $21710, %eax            #   4:     if     21710 >= 3117 goto 6_while_body
    movl    $3117, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    movl    $80796, %eax            #   9:     if     80796 # 23402 goto 9
    movl    $23402, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_9               
    jmp     l_test_10               #  10:     goto   10
l_test_9:
    movl    $1, %eax                #  12:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  13:     goto   11
l_test_10:
    movl    $0, %eax                #  15:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  17:     assign v0 <- t0
    movb    %al, v0                
    call    dummyProcedure          #  18:     call   dummyProcedure
    movl    $98027, %eax            #  19:     if     98027 < 36284 goto 15
    movl    $36284, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15              
    jmp     l_test_16               #  20:     goto   16
l_test_15:
    movl    $1, %eax                #  22:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_17               #  23:     goto   17
l_test_16:
    movl    $0, %eax                #  25:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_17:
    movzbl  -14(%ebp), %eax         #  27:     assign v0 <- t1
    movb    %al, v0                
l_test_20_while_cond:
    jmp     l_test_19               #  29:     goto   19
    jmp     l_test_20_while_cond    #  30:     goto   20_while_cond
l_test_19:
    call    dummyProcedure          #  32:     call   dummyProcedure
    call    WriteLn                 #  33:     call   WriteLn
    jmp     l_test_0                #  34:     goto   0
l_test_2_if_false:
l_test_0:
l_test_25_while_cond:
    movl    $83366, %eax            #  38:     if     83366 = 307 goto 26_while_body
    movl    $307, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_26_while_body   
    jmp     l_test_24               #  39:     goto   24
l_test_26_while_body:
l_test_29_while_cond:
    jmp     l_test_29_while_cond    #  42:     goto   29_while_cond
    jmp     l_test_31               #  43:     goto   31
l_test_31:
    call    dummyBOOLfunc           #  45:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $32598, %eax            #  46:     assign v1 <- 32598
    movl    %eax, v1               
    jmp     l_test_25_while_cond    #  47:     goto   25_while_cond
l_test_24:
l_test_37_while_cond:
    movl    $99, %eax               #  50:     if     99 < 100 goto 38_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_38_while_body   
    jmp     l_test_36               #  51:     goto   36
l_test_38_while_body:
    movl    $92057, %eax            #  53:     assign v1 <- 92057
    movl    %eax, v1               
l_test_42_while_cond:
    jmp     l_test_41               #  55:     goto   41
    jmp     l_test_42_while_cond    #  56:     goto   42_while_cond
l_test_41:
    movl    $81729, %eax            #  58:     if     81729 > 91819 goto 45_if_true
    movl    $91819, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_45_if_true      
    jmp     l_test_46_if_false      #  59:     goto   46_if_false
l_test_45_if_true:
    jmp     l_test_44               #  61:     goto   44
l_test_46_if_false:
l_test_44:
l_test_49_while_cond:
    jmp     l_test_48               #  65:     goto   48
    jmp     l_test_49_while_cond    #  66:     goto   49_while_cond
l_test_48:
    jmp     l_test_37_while_cond    #  68:     goto   37_while_cond
l_test_36:
    call    dummyBOOLfunc           #  70:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movl    $10005, %eax            #  71:     assign v1 <- 10005
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

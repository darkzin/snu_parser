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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 25 of <array 41 of <array 76 of <array 51 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $97, %eax               #   0:     if     97 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
    movl    $98, %eax               #   5:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $57359, %eax            #   9:     if     57359 >= 60344 goto 9_if_true
    movl    $60344, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
l_f0_9_if_true:
    movl    $38563, %eax            #  12:     if     38563 < 19506 goto 13
    movl    $19506, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_13                
    jmp     l_f0_14                 #  13:     goto   14
l_f0_13:
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_15                 #  16:     goto   15
l_f0_14:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_15:
    movzbl  -13(%ebp), %eax         #  20:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    movl    $100, %eax              #  21:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_18                 #  22:     goto   18
l_f0_18:
l_f0_22_while_cond:
    jmp     l_f0_21                 #  25:     goto   21
    jmp     l_f0_22_while_cond      #  26:     goto   22_while_cond
l_f0_21:
    movl    $46549, %eax            #  28:     if     46549 <= 65759 goto 25_if_true
    movl    $65759, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  29:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_24                 #  31:     goto   24
l_f0_26_if_false:
l_f0_24:
l_f0_29_while_cond:
    movl    $100, %eax              #  35:     if     100 >= 100 goto 30_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_30_while_body     
    jmp     l_f0_28                 #  36:     goto   28
l_f0_30_while_body:
    jmp     l_f0_29_while_cond      #  38:     goto   29_while_cond
l_f0_28:
    movl    $98, %eax               #  40:     if     98 <= 98 goto 33_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_33_if_true        
    jmp     l_f0_34_if_false        #  41:     goto   34_if_false
l_f0_33_if_true:
    jmp     l_f0_32                 #  43:     goto   32
l_f0_34_if_false:
l_f0_32:
    movl    $66957, %eax            #  46:     if     66957 # 31354 goto 37_if_true
    movl    $31354, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_37_if_true        
    jmp     l_f0_38_if_false        #  47:     goto   38_if_false
l_f0_37_if_true:
    jmp     l_f0_36                 #  49:     goto   36
l_f0_38_if_false:
l_f0_36:
l_f0_41_while_cond:
    jmp     l_f0_41_while_cond      #  53:     goto   41_while_cond
    jmp     l_f0_8                  #  54:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_45_if_false        #  57:     goto   45_if_false
    movl    $0, %eax                #  58:     if     0 = 0 goto 51_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_51_if_true        
    jmp     l_f0_52_if_false        #  59:     goto   52_if_false
l_f0_51_if_true:
    jmp     l_f0_50                 #  61:     goto   50
l_f0_52_if_false:
l_f0_50:
    jmp     l_f0_43                 #  64:     goto   43
l_f0_45_if_false:
l_f0_43:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 46 of <array 92 of <array 10 of <array 21 of <array 48 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 100 of <array 49 of <array 86 of <array 98 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 27 of <array 56 of <array 29 of <array 64 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $1, %eax                #   0:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   4:     return t4
    jmp     l_f1_exit              
    movl    $97, %eax               #   5:     if     97 >= 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_10                
    jmp     l_f1_7                  #   6:     goto   7
l_f1_10:
    jmp     l_f1_7                  #   8:     goto   7
    jmp     l_f1_7                  #   9:     goto   7
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #  11:     goto   8
l_f1_7:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  15:     return t5
    jmp     l_f1_exit              
    movl    $1, %eax                #  16:     assign v3 <- 1
    movb    %al, 20(%ebp)          

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -19(%ebp)   1  [ $v1       <bool> %ebp-19 ]

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
    movl    $5334, %eax             #   0:     add    t4 <- 5334, 72082
    movl    $72082, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $15619, %eax            #   1:     if     15619 = t4 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v1 <- t5
    movb    %al, -19(%ebp)         
    movl    $48535, %eax            #  10:     if     48535 <= 75723 goto 6
    movl    $75723, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f2_8:
    movzbl  -18(%ebp), %eax         #  18:     assign v1 <- t6
    movb    %al, -19(%ebp)         
l_f2_11_while_cond:
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  21:     goto   15_while_cond
    jmp     l_f2_11_while_cond      #  22:     goto   11_while_cond

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $45610, %eax            #   2:     if     45610 # 88078 goto 3_if_true
    movl    $88078, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
    movl    $49187, %eax            #   7:     if     49187 >= 82304 goto 10_if_true
    movl    $82304, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_if_true      
    jmp     l_test_11_if_false      #   8:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  10:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_2                #  14:     goto   2
l_test_4_if_false:
l_test_2:
    call    dummyINTfunc            #  17:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     assign v0 <- t1
    movl    %eax, v0               
l_test_16_while_cond:
    movl    $73985, %eax            #  20:     add    t2 <- 73985, 19855
    movl    $19855, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t3 <- t2, 64519
    movl    $64519, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $89238, %eax            #  22:     if     89238 > t3 goto 17_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_17_while_body   
    jmp     l_test_15               #  23:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  25:     goto   16_while_cond
l_test_15:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 65 of <array 62 of <array 30 of <array 74 of <array 70 of <char>>>>>>> %ebp+12 ]
    #    -20(%ebp)   1  [ $v2       <bool> %ebp-20 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    movl    $42496, %eax            #   0:     add    t1 <- 42496, 7123
    movl    $7123, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $45519, %eax            #   1:     if     45519 > t1 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   4:     if     98 # 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_5                 
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f0_7:
    movzbl  -17(%ebp), %eax         #  12:     assign v2 <- t2
    movb    %al, -20(%ebp)         
    movl    $1, %eax                #  13:     return 1
    jmp     l_f0_exit              
    movl    $1, %eax                #  14:     return 1
    jmp     l_f0_exit              
    movl    $12339, %eax            #  15:     assign v3 <- 12339
    movl    %eax, -24(%ebp)        
l_f0_13_while_cond:
    movl    $0, %eax                #  17:     if     0 = 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_14_while_body     
    jmp     l_f0_12                 #  18:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  20:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_16                 #  22:     goto   16
l_f0_16:
    movl    $21563, %eax            #  24:     if     21563 < 67618 goto 20_if_true
    movl    $67618, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  25:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  27:     goto   19
l_f0_21_if_false:
l_f0_19:
    jmp     l_f0_0                  #  30:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #  33:     call   t3 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f0_29_if_false        #  34:     goto   29_if_false
    jmp     l_f0_27                 #  35:     goto   27
l_f0_29_if_false:
l_f0_27:
l_f0_31_while_cond:
    movl    $47977, %eax            #  39:     if     47977 <= 137 goto 32_while_body
    movl    $137, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_32_while_body     
    jmp     l_f0_30                 #  40:     goto   30
l_f0_32_while_body:
    jmp     l_f0_31_while_cond      #  42:     goto   31_while_cond
l_f0_30:
    jmp     l_f0_23                 #  44:     goto   23
l_f0_23:
    jmp     l_f0_37                 #  46:     goto   37
l_f0_37:
    jmp     l_f0_41                 #  48:     goto   41
    jmp     l_f0_42                 #  49:     goto   42
l_f0_41:
    movl    $1, %eax                #  51:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f0_43                 #  52:     goto   43
l_f0_42:
    movl    $0, %eax                #  54:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f0_43:
    movzbl  -19(%ebp), %eax         #  56:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_34                 #  57:     goto   34
l_f0_34:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 65 of <array 54 of <array 10 of <array 7 of <array 13 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    movl    $36890, %eax            #   0:     add    t1 <- 36890, 78049
    movl    $78049, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 3804
    movl    $3804, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $98, %eax               #   4:     if     98 > 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    movl    $93479, %eax            #   7:     assign v2 <- 93479
    movl    %eax, -28(%ebp)        
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
l_f1_7_while_cond:
    movl    $100, %eax              #  11:     if     100 >= 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_while_body:
    movl    $44826, %eax            #  14:     assign v2 <- 44826
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  15:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_7_while_cond       #  16:     goto   7_while_cond
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 59 of <array 79 of <array 77 of <array 47 of <array 62 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $1, %eax                #   0:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   1:     goto   3
    movl    $0, %eax                #   2:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   4:     return t1
    jmp     l_f2_exit              
    movl    $87781, %eax            #   5:     if     87781 <= 4274 goto 10
    movl    $4274, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_10                
    jmp     l_f2_11                 #   6:     goto   11
l_f2_10:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #   9:     goto   12
l_f2_11:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movzbl  -14(%ebp), %eax         #  13:     assign v1 <- t2
    movb    %al, 12(%ebp)          
    jmp     l_f2_6                  #  14:     goto   6
l_f2_6:
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  17:     goto   15_while_cond

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $11015, %eax            #   4:     if     11015 > 96660 goto 5_if_true
    movl    $96660, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
l_test_9_while_cond:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_14_while_cond:
    movl    $99, %eax               #  17:     if     99 <= 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_15_while_body   
    jmp     l_test_13               #  18:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  20:     goto   14_while_cond
l_test_13:
    jmp     l_test_9_while_cond     #  22:     goto   9_while_cond
l_test_18_while_cond:
    movl    $59087, %eax            #  24:     if     59087 >= 5766 goto 19_while_body
    movl    $5766, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_19_while_body   
    jmp     l_test_17               #  25:     goto   17
l_test_19_while_body:
    jmp     l_test_exit            
    jmp     l_test_18_while_cond    #  28:     goto   18_while_cond
l_test_17:
l_test_23_while_cond:
    jmp     l_test_24_while_body    #  31:     goto   24_while_body
l_test_24_while_body:
    jmp     l_test_26               #  33:     goto   26
l_test_26:
    jmp     l_test_23_while_cond    #  35:     goto   23_while_cond
l_test_30_while_cond:
    movl    $99, %eax               #  37:     if     99 > 100 goto 31_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_31_while_body   
    jmp     l_test_29               #  38:     goto   29
l_test_31_while_body:
    jmp     l_test_33               #  40:     goto   33
l_test_33:
l_test_37_while_cond:
    movl    $98, %eax               #  43:     if     98 < 97 goto 38_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_38_while_body   
    jmp     l_test_36               #  44:     goto   36
l_test_38_while_body:
    jmp     l_test_37_while_cond    #  46:     goto   37_while_cond
l_test_36:
    jmp     l_test_30_while_cond    #  48:     goto   30_while_cond
l_test_29:
    movl    $25876, %eax            #  50:     assign v0 <- 25876
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

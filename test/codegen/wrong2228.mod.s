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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 48 of <array 94 of <array 60 of <array 36 of <array 56 of <int>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   4:     if     97 > 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_6                 
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v3 <- t2
    movb    %al, -21(%ebp)         
l_f0_11_while_cond:
    movl    $0, %eax                #  14:     if     0 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  15:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  17:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_1_while_cond       #  19:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  21:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  22:     if     100 = 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  23:     goto   17_if_false
l_f0_16_if_true:
l_f0_20_while_cond:
    movl    $1, %eax                #  26:     if     1 # 0 goto 21_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_21_while_body     
    jmp     l_f0_19                 #  27:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  29:     goto   20_while_cond
l_f0_19:
    call    WriteLn                 #  31:     call   WriteLn
l_f0_25_while_cond:
    jmp     l_f0_25_while_cond      #  33:     goto   25_while_cond
    jmp     l_f0_15                 #  34:     goto   15
l_f0_17_if_false:
l_f0_15:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
l_f1_1_while_cond:
    movl    $92588, %eax            #   1:     if     92588 >= 2273 goto 2_while_body
    movl    $2273, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $0, %eax                #   4:     assign v1 <- 0
    movb    %al, -14(%ebp)         
    movl    $33993, %eax            #   5:     if     33993 >= 4452 goto 6_if_true
    movl    $4452, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $1, %eax                #  11:     if     1 # 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_13                 #  17:     goto   13
l_f1_13:
l_f1_17_while_cond:
    jmp     l_f1_16                 #  20:     goto   16
    jmp     l_f1_17_while_cond      #  21:     goto   17_while_cond
l_f1_16:
    movl    $99, %eax               #  23:     assign v2 <- 99
    movb    %al, -15(%ebp)         
    jmp     l_f1_1_while_cond       #  24:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  26:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_23_if_false        #  27:     goto   23_if_false
    jmp     l_f1_exit              
    jmp     l_f1_21                 #  29:     goto   21
l_f1_23_if_false:
l_f1_21:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 15 of <array 72 of <array 39 of <array 44 of <array 48 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $6136, %eax             #   2:     if     6136 <= 33193 goto 3_while_body
    movl    $33193, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
l_test_2_while_cond:
    movl    $100, %eax              #   3:     if     100 < 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_2_while_cond     #  10:     goto   2_while_cond
    jmp     l_test_exit            
    movl    $98, %eax               #  12:     assign v1 <- 98
    movb    %al, v1                

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################

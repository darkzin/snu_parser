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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_4:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v2 <- t4
    movb    %al, -22(%ebp)         
    movl    $1208, %eax             #  10:     div    t5 <- 1208, 25384
    movl    $25384, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     assign v3 <- t5
    movl    %eax, -28(%ebp)        
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #    -21(%ebp)   1  [ $v5       <bool> %ebp-21 ]

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
    movl    $100, %eax              #   0:     if     100 < 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   1:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   3:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_0                  #   6:     goto   0
l_f1_0:
    movl    $38960, %eax            #   8:     if     38960 <= 35863 goto 10
    movl    $35863, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10                
    jmp     l_f1_11                 #   9:     goto   11
l_f1_10:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  12:     goto   12
l_f1_11:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  16:     assign v5 <- t3
    movb    %al, -21(%ebp)         
    call    ReadInt                 #  17:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     return t4
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 25 of <array 70 of <array 41 of <array 64 of <array 97 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 72 of <array 98 of <array 93 of <array 62 of <array 43 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 60 of <array 45 of <array 80 of <array 97 of <array 88 of <bool>>>>>>> %ebp+20 ]

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
    jmp     l_f2_5                  #   0:     goto   5
l_f2_5:
    movl    $1, %eax                #   2:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   3:     goto   7
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #   6:     if     t3 = 0 goto 1
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   7:     goto   2
l_f2_1:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  14:     return t4
    jmp     l_f2_exit              
l_f2_12_while_cond:
    jmp     l_f2_13_while_body      #  16:     goto   13_while_body
    jmp     l_f2_13_while_body      #  17:     goto   13_while_body
    jmp     l_f2_13_while_body      #  18:     goto   13_while_body
    jmp     l_f2_13_while_body      #  19:     goto   13_while_body
    jmp     l_f2_11                 #  20:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  22:     goto   12_while_cond
l_f2_11:
    movl    $54842, %eax            #  24:     add    t5 <- 54842, 60629
    movl    $60629, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     add    t6 <- t5, 5326
    movl    $5326, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     if     t6 <= 2745 goto 21
    movl    $2745, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_21                
    jmp     l_f2_22                 #  27:     goto   22
l_f2_21:
    movl    $1, %eax                #  29:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_23                 #  30:     goto   23
l_f2_22:
    movl    $0, %eax                #  32:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f2_23:
    movzbl  -25(%ebp), %eax         #  34:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    jmp     l_test_2                #   0:     goto   2
    jmp     l_test_2                #   1:     goto   2
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, v0                
    movl    $55139, %eax            #   8:     div    t1 <- 55139, 45904
    movl    $45904, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     div    t2 <- t1, 54600
    movl    $54600, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    call    WriteLn                 #   2:     call   WriteLn

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 71 of <array 11 of <array 1 of <array 27 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 29 of <array 25 of <array 61 of <array 52 of <array 69 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 36 of <array 49 of <array 5 of <array 5 of <array 44 of <bool>>>>>>> %ebp+16 ]

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
    movl    $98, %eax               #   0:     if     98 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_7_if_false         #   7:     goto   7_if_false
    movl    $51125, %eax            #   8:     if     51125 < 26172 goto 9_if_true
    movl    $26172, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  15:     goto   13_while_cond
    jmp     l_f1_5                  #  16:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 91 of <array 50 of <array 58 of <array 47 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    call    dummyINTfunc            #   2:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t4 < 863 goto 3_while_body
    movl    $863, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_5                  #   6:     goto   5
l_f2_5:
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
l_f2_10_while_cond:
    movl    $0, %eax                #  12:     if     0 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_while_body     
    jmp     l_f2_9                  #  13:     goto   9
l_f2_11_while_body:
    movl    $0, %eax                #  15:     if     0 = 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14                
    jmp     l_f2_15                 #  16:     goto   15
l_f2_14:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_16                 #  19:     goto   16
l_f2_15:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_16:
    movzbl  -21(%ebp), %eax         #  23:     assign v3 <- t5
    movb    %al, 16(%ebp)          
    jmp     l_f2_10_while_cond      #  24:     goto   10_while_cond
l_f2_9:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_5                #   3:     goto   5
    jmp     l_test_5                #   4:     goto   5
l_test_5:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #   7:     goto   7
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #  10:     if     t1 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #  11:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    movl    $75113, %eax            #  14:     if     75113 > 47408 goto 13_if_true
    movl    $47408, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  17:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_exit            
    movl    $81144, %eax            #  21:     if     81144 < 75070 goto 18
    movl    $75070, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_18              
    jmp     l_test_19               #  22:     goto   19
l_test_18:
    movl    $1, %eax                #  24:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_20               #  25:     goto   20
l_test_19:
    movl    $0, %eax                #  27:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_20:
    movzbl  -15(%ebp), %eax         #  29:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_2_while_cond     #  30:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    movl    $24859, %eax            #  33:     assign v2 <- 24859
    movl    %eax, v2               

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################

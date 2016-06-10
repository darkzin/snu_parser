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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $22776, %eax            #   1:     div    t1 <- 22776, 51837
    movl    $51837, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t2 <- t1, 94877
    movl    $94877, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t3 <- t2, 58297
    movl    $58297, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t4 <- t3, 7924
    movl    $7924, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t4 <= 48937 goto 2_while_body
    movl    $48937, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $89844, %eax            #   9:     if     89844 = 3065 goto 6_while_body
    movl    $3065, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #  10:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  12:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    call    dummyBOOLfunc           #  17:     call   t6 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  18:     return t6
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
l_f1_1_while_cond:
    jmp     l_f1_8                  #   1:     goto   8
l_f1_8:
    jmp     l_f1_4                  #   3:     goto   4
    jmp     l_f1_5                  #   4:     goto   5
l_f1_4:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   7:     goto   6
l_f1_5:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $1, %eax                #  11:     if     1 # t1 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_16_if_false        #  16:     goto   16_if_false
    call    ReadInt                 #  17:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_18                 #  18:     goto   18
l_f1_18:
    movl    $1, %eax                #  20:     if     1 = 1 goto 22_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  21:     goto   23_if_false
l_f1_22_if_true:
    jmp     l_f1_21                 #  23:     goto   21
l_f1_23_if_false:
l_f1_21:
    jmp     l_f1_27_if_false        #  26:     goto   27_if_false
    jmp     l_f1_25                 #  27:     goto   25
l_f1_27_if_false:
l_f1_25:
    jmp     l_f1_14                 #  30:     goto   14
l_f1_16_if_false:
l_f1_14:
l_f1_29_while_cond:
    call    f0                      #  34:     call   t3 <- f0
    movb    %al, -21(%ebp)         
    call    f0                      #  35:     call   t4 <- f0
    movb    %al, -22(%ebp)         
    movzbl  -21(%ebp), %eax         #  36:     if     t3 # t4 goto 30_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_30_while_body     
    jmp     l_f1_28                 #  37:     goto   28
l_f1_30_while_body:
    jmp     l_f1_29_while_cond      #  39:     goto   29_while_cond
l_f1_28:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 8 of <array 3 of <array 2 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $99, %eax               #   0:     assign v1 <- 99
    movb    %al, 12(%ebp)          
    jmp     l_f2_4                  #   1:     goto   4
l_f2_4:
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_1                  #   4:     goto   1
l_f2_1:
    jmp     l_f2_9                  #   6:     goto   9
    jmp     l_f2_9                  #   7:     goto   9
l_f2_9:
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  10:     goto   11
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  13:     return t2
    jmp     l_f2_exit              

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $100, %eax              #   7:     assign v0 <- 100
    movb    %al, v0                
    movl    $98, %eax               #   8:     assign v0 <- 98
    movb    %al, v0                
    movl    $98, %eax               #   9:     assign v0 <- 98
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

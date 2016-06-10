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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #   1:     if     99 >= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $97, %eax               #   5:     if     97 < 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_7_while_body      
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_10_while_cond:
    jmp     l_f0_12                 #  14:     goto   12
l_f0_12:
    jmp     l_f0_10_while_cond      #  16:     goto   10_while_cond

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 31 of <array 19 of <array 20 of <array 39 of <array 9 of <char>>>>>>> %ebp+8 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 <= t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   9:     if     100 = t3 goto 6_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #  10:     goto   4
l_f1_6_while_body:
l_f1_9_while_cond:
    jmp     l_f1_8                  #  13:     goto   8
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
l_f1_8:
    movl    $0, %eax                #  16:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_5_while_cond       #  17:     goto   5_while_cond
l_f1_4:
    movl    $51170, %eax            #  19:     mul    t4 <- 51170, 74727
    movl    $74727, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t5 <- t4, 61361
    movl    $61361, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $79344, %eax            #  21:     sub    t6 <- 79344, t5
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $50131, %eax            #  22:     if     50131 # t6 goto 13
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_13                
    jmp     l_f1_14                 #  23:     goto   14
l_f1_13:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_15                 #  26:     goto   15
l_f1_14:
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f1_15:
    movzbl  -29(%ebp), %eax         #  30:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 31 of <array 19 of <array 20 of <array 39 of <array 9 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #   -4134828(%ebp)  4134804  [ $v0       <array 31 of <array 19 of <array 20 of <array 39 of <array 9 of <char>>>>>> %ebp-4134828 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4134816, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1033704, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4134828(%ebp)       # local array 'v0': 5 dimensions
    movl    $31,-4134824(%ebp)      #   dimension 1: 31 elements
    movl    $19,-4134820(%ebp)      #   dimension 2: 19 elements
    movl    $20,-4134816(%ebp)      #   dimension 3: 20 elements
    movl    $39,-4134812(%ebp)      #   dimension 4: 39 elements
    movl    $9,-4134808(%ebp)       #   dimension 5: 9 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $0, %eax                #   3:     if     0 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_5                  #   6:     goto   5
l_f2_5:
    leal    -4134828(%ebp), %eax    #   8:     &()    t3 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  10:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $20852, %eax            #  11:     if     20852 # 885 goto 10_if_true
    movl    $885, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  14:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_2_while_cond       #  17:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_18                 #  19:     goto   18
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_19                 #  21:     goto   19
l_f2_18:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f2_19:
    movzbl  -22(%ebp), %eax         #  25:     if     t5 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  26:     goto   15_if_false
l_f2_14_if_true:
l_f2_23_while_cond:
    jmp     l_f2_23_while_cond      #  29:     goto   23_while_cond
    jmp     l_f2_13                 #  30:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $4134816, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
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
l_test_1_while_cond:
    movl    $95548, %eax            #   1:     if     95548 = 10309 goto 2_while_body
    movl    $10309, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_4                #   5:     goto   4
    jmp     l_test_exit            
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $20156, %eax            #  13:     div    t0 <- 20156, 50514
    movl    $50514, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $95184, %eax            #  14:     sub    t1 <- 95184, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################

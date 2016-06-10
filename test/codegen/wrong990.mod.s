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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 4 of <array 10 of <array 2 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    movl    $33505, %eax            #   1:     if     33505 >= 22589 goto 2_while_body
    movl    $22589, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyProcedure          #   4:     call   dummyProcedure
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    movl    $100, %eax              #   8:     return 100
    jmp     l_f0_exit              
l_f0_10_while_cond:
    jmp     l_f0_9                  #  10:     goto   9
    jmp     l_f0_10_while_cond      #  11:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_6_while_cond       #  13:     goto   6_while_cond
    movl    $44305, %eax            #  14:     mul    t0 <- 44305, 99838
    movl    $99838, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     assign v2 <- t0
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 2 of <array 4 of <array 10 of <array 2 of <array 4 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #   -692(%ebp)  664  [ $v0       <array 2 of <array 4 of <array 10 of <array 2 of <array 4 of <bool>>>>>> %ebp-692 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $680, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $170, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-692(%ebp)           # local array 'v0': 5 dimensions
    movl    $2,-688(%ebp)           #   dimension 1: 2 elements
    movl    $4,-684(%ebp)           #   dimension 2: 4 elements
    movl    $10,-680(%ebp)          #   dimension 3: 10 elements
    movl    $2,-676(%ebp)           #   dimension 4: 2 elements
    movl    $4,-672(%ebp)           #   dimension 5: 4 elements

    # function body
l_f1_1_while_cond:
    leal    -692(%ebp), %eax        #   1:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t0
    pushl   %eax                   
    movl    $97, %eax               #   3:     if     97 <= 100 goto 4
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_4                 
    jmp     l_f1_5                  #   4:     goto   5
l_f1_4:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_6                  #   7:     goto   6
l_f1_5:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f1_6:
    movzbl  -17(%ebp), %eax         #  11:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  12:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  13:     if     t2 # 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_while_body:
l_f1_9_while_cond:
    movl    $62646, %eax            #  17:     if     62646 < 31711 goto 10_while_body
    movl    $31711, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #  18:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  20:     goto   9_while_cond
l_f1_8:
l_f1_13_while_cond:
    jmp     l_f1_12                 #  23:     goto   12
    jmp     l_f1_13_while_cond      #  24:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_1_while_cond       #  26:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
l_f1_17_while_cond:
    movl    $31404, %eax            #  30:     mul    t3 <- 31404, 80007
    movl    $80007, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $80291, %eax            #  31:     sub    t4 <- 80291, t3
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $37928, %eax            #  32:     if     37928 = t4 goto 18_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_18_while_body     
    jmp     l_f1_16                 #  33:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  35:     goto   17_while_cond
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $680, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]

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
    movl    $75730, %eax            #   0:     mul    t0 <- 75730, 3804
    movl    $3804, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 9089
    movl    $9089, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t2 <- t1, 1509
    movl    $1509, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, -28(%ebp)        
    movl    $99, %eax               #   4:     assign v1 <- 99
    movb    %al, -29(%ebp)         
    movl    $32990, %eax            #   5:     if     32990 = 86363 goto 3_if_true
    movl    $86363, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   6:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    movl    $46031, %eax            #   9:     assign v0 <- 46031
    movl    %eax, -28(%ebp)        
    jmp     l_f2_7_while_cond       #  10:     goto   7_while_cond
    jmp     l_f2_2                  #  11:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    WriteLn                 #   4:     call   WriteLn

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
